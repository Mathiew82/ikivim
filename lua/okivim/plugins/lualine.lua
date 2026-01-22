return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "catppuccin",
          component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
        },
        sections = {
          lualine_c = {
            {
              "filename",
              path = 1, -- 0 = name, 1 = relative, 2 = absolute
            },
          },
        },
      })
    end,
  },
}
