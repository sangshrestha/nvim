local opt = vim.opt

-- Set `mapleader` before loading lazy.nvim so that the mapping is correct
vim.g.mapleader = " "

-- Disable mouse
opt.mouse = ""

-- Don't show netrw banner
vim.g.netrw_banner = 0

-- Show line numbers
opt.number = true
opt.relativenumber = true

-- Keep signcolumn on by default
opt.signcolumn = "yes:1"

-- Highlight current line
opt.cursorline = false

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 5

-- Indent style
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- Sync clipboard with OS
opt.clipboard = "unnamedplus"
--
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Save undo history
opt.undofile = true

-- Decrease update time
opt.updatetime = 250

-- Confirm to save changes before exiting buffer
opt.confirm = true

-- Show source in diagnostics
vim.diagnostic.config({
  severity_sort = true,
  virtual_text = {
    source = "always", -- Or "if_many"
  },
  float = {
    source = "always", -- Or "if_many"
  },
})
