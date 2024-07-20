local opt = vim.opt

-- Show line numbers
opt.number = true
opt.relativenumber = true

-- Highlight current line
opt.cursorline = true

-- Don't have `o` add a comment
opt.formatoptions:remove "o"

-- Sync clipboard with OS
opt.clipboard = "unnamedplus"
