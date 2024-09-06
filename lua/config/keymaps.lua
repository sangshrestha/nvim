-- Clear search highlight on <Esc>
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Scroll two lines at once
vim.keymap.set("n", "<C-e>", "2<C-e>", { desc = "Scroll down 2 lines" })
vim.keymap.set("n", "<C-y>", "2<C-y>", { desc = "Scroll up 2 lines" })

-- Recenter after moving up and down page
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Switch to last buffer
vim.keymap.set("n", "<leader><leader>", "<Cmd>buffer#<CR>", { silent = true })

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
