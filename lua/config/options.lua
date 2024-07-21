local opt = vim.opt

-- Set `mapleader` before loading lazy.nvim so that the mapping is correct
vim.g.mapleader = " "

-- Show line numbers
opt.number = true
opt.relativenumber = true

-- Highlight current line
opt.cursorline = true

-- Indent style
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Don't have `o` add a comment
opt.formatoptions:remove("o")
opt.formatoptions:remove("O")

-- Sync clipboard with OS
opt.clipboard = "unnamedplus"

-- Save undo history
vim.opt.undofile = true
