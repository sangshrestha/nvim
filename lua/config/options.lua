local opt = vim.opt

-- Set `mapleader` before loading lazy.nvim so that the mapping is correct
vim.g.mapleader = " "

-- Don't show netrw banner
vim.g.netrw_banner = 0

-- Show line numbers
opt.number = true
opt.relativenumber = true

-- Highlight current line
opt.cursorline = false

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 5

-- Indent style
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- Don't have `o` add a comment
opt.formatoptions:remove("o")

-- Sync clipboard with OS
opt.clipboard = "unnamedplus"

-- Save undo history
opt.undofile = true

-- Decrease update time
opt.updatetime = 250

-- Confirm to save changes before exiting buffer
opt.confirm = true
