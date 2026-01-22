return {
  {
    "echasnovski/mini.surround",
    version = false,
    event = "VeryLazy",
    config = function()
      require("mini.surround").setup({
        -- Mappings
        mappings = {
          add = "sa",            -- Add surrounding
          delete = "sd",         -- Delete surrounding
          find = "sf",           -- Find surrounding
          find_left = "sF",      -- Find surrounding (left)
          highlight = "sh",      -- Highlight surrounding
          replace = "sr",        -- Replace surrounding
          update_n_lines = "sn", -- Update search range
        },
      })
    end,
  },
}
