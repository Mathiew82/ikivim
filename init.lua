local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

require("config")

if vim.fn.isdirectory(lazypath) == 1 then
  vim.opt.rtp:prepend(lazypath)
  require("lazy").setup("plugins")
end
