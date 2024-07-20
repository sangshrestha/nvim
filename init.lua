-- Set `mapleader` before loading lazy.nvim so that the mapping is correct
vim.g.mapleader = " "

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end

-- Add lazy.nvim to the `runtimepath` which allows us to `require` it
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
