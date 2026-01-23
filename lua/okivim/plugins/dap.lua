return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      { "rcarriga/nvim-dap-ui",           dependencies = { "nvim-neotest/nvim-nio" } },
      { "theHamsta/nvim-dap-virtual-text" },
      { "williamboman/mason.nvim" },
      { "jay-babu/mason-nvim-dap.nvim" },
      { "mxsdev/nvim-dap-vscode-js" },
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      require("mason").setup()

      require("mason-nvim-dap").setup({
        automatic_setup = true,
        ensure_installed = {
          "debugpy",           -- python
          "codelldb",          -- rust/c/c++
          "js-debug-adapter",  -- js/ts (vscode-js-debug)
          "php-debug-adapter", -- php (xdebug)
        },
      })

      require("dap-vscode-js").setup({
        debugger_path = vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter",
        adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal" },
      })

      require("nvim-dap-virtual-text").setup()

      -- Node/TS - tsx or build with sourcemaps
      local function js_ts_configs()
        return {
          {
            type = "pwa-node",
            request = "launch",
            name = "TS/JS: Run current file (tsx)",
            cwd = "${workspaceFolder}",
            runtimeExecutable = "node",
            runtimeArgs = { "--loader", "tsx" },
            program = "${file}",
            sourceMaps = true,
            console = "integratedTerminal",
            skipFiles = { "<node_internals>/**", "node_modules/**" },
          },
          {
            type = "pwa-node",
            request = "launch",
            name = "TS/JS: Launch compiled (dist)",
            cwd = "${workspaceFolder}",
            program = "${workspaceFolder}/dist/index.js",
            sourceMaps = true,
            outFiles = { "${workspaceFolder}/dist/**/*.js" },
            console = "integratedTerminal",
            skipFiles = { "<node_internals>/**", "node_modules/**" },
          },
          {
            type = "pwa-node",
            request = "attach",
            name = "TS/JS: Attach to process",
            processId = require("dap.utils").pick_process,
            cwd = "${workspaceFolder}",
            skipFiles = { "<node_internals>/**", "node_modules/**" },
          },
        }
      end

      for _, lang in ipairs({ "typescript", "javascript", "typescriptreact", "javascriptreact" }) do
        dap.configurations[lang] = js_ts_configs()
      end

      -- Xdebug
      -- In php.ini / xdebug.ini
      -- xdebug.mode=debug
      -- xdebug.start_with_request=yes
      -- xdebug.client_port=9003
      dap.configurations.php = {
        {
          type = "php",
          request = "launch",
          name = "PHP: Listen for Xdebug (9003)",
          port = 9003,
          pathMappings = {
            ["/var/www/html"] = "${workspaceFolder}",
          },
        },
      }

      -- python or venv activated
      dap.configurations.python = {
        {
          type = "python",
          request = "launch",
          name = "Python: Launch current file",
          program = "${file}",
          cwd = "${workspaceFolder}",
          pythonPath = function()
            local venv = os.getenv("VIRTUAL_ENV")
            if venv then
              return venv .. "/bin/python"
            end
            return vim.fn.exepath("python3") or vim.fn.exepath("python")
          end,
          console = "integratedTerminal",
        },
      }

      -- rustc + cargo
      dap.configurations.rust = {
        {
          type = "codelldb",
          request = "launch",
          name = "Rust: Launch (target/debug/...)",
          cwd = "${workspaceFolder}",
          program = function()
            return vim.fn.input(
              "Path to executable: ",
              vim.fn.getcwd() .. "/target/debug/",
              "file"
            )
          end,
          args = function()
            local input = vim.fn.input("Args: ")
            if input == nil or input == "" then
              return {}
            end
            return vim.split(input, "%s+")
          end,
          stopOnEntry = false,
        },
      }

      dapui.setup()

      dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
      dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
      dap.listeners.before.event_exited["dapui_config"]     = function() dapui.close() end

      vim.keymap.set("n", "<F5>", dap.continue)
      vim.keymap.set("n", "<F10>", dap.step_over)
      vim.keymap.set("n", "<F11>", dap.step_into)
      vim.keymap.set("n", "<F12>", dap.step_out)
      vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint)
      vim.keymap.set("n", "<leader>dB", function()
        dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
      end)
      vim.keymap.set("n", "<leader>dr", dap.repl.open)
      vim.keymap.set("n", "<leader>dl", dap.run_last)
    end,
  },
}
