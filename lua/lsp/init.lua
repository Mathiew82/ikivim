local servers = {
  "lua_ls",
  "pyright",
  "ts_ls",
  "vue_ls",
  "bashls",
  "jsonls",
  "yamlls",
}

-- Keymaps cuando LSP se adjunta
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspKeymaps", { clear = true }),
  callback = function(ev)
    local opts = { buffer = ev.buf, silent = true }

    -- Navegación
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

    -- Acciones
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

    -- Diagnósticos
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
  end,
})

-- Capabilities
local ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
local capabilities = ok
  and cmp_nvim_lsp.default_capabilities()
  or vim.lsp.protocol.make_client_capabilities()

-- Configuración por servidor (API NUEVA)
vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    },
  },
})

vim.lsp.config("pyright", {
  capabilities = capabilities,
})

vim.lsp.config("tsserver", {
  capabilities = capabilities,
})

vim.lsp.config("bashls", {
  capabilities = capabilities,
})

vim.lsp.config("jsonls", {
  capabilities = capabilities,
})

vim.lsp.config("yamlls", {
  capabilities = capabilities,
})

-- Activar LSPs
vim.lsp.enable(servers)

return {
  servers = servers,
}
