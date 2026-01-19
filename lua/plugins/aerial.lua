return {
  {
    "stevearc/aerial.nvim",
    config = function()
      require("aerial").setup({
        close_behavior = "auto",
        float = {
          border = "rounded",
        },
        nerd_font = "auto",
        show_guides = true,
      })
    end,
  },
}
