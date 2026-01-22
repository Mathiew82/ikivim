return {
  'Wansmer/treesj',
  keys = { '<space>m', '<space>j', '<space>s' },
  -- <space>j -> Combine several lines into one
  -- <space>s -> Separate into several lines
  -- <space>m -> Toggle between split ↔ join
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('treesj').setup({})
  end,
}
