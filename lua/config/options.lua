local opt = vim.opt

-- Set `mapleader` before loading lazy.nvim so that the mapping is correct
vim.g.mapleader = " "

-- Show line numbers
opt.number = true
opt.relativenumber = true

-- Highlight current line
opt.cursorline = true

-- Don't have `o` add a comment
opt.formatoptions:remove "o"
opt.formatoptions:remove "O"

-- Sync clipboard with OS
opt.clipboard = "unnamedplus"
