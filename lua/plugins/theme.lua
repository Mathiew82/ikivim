return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    integrations = { treesitter = true },
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
