-- Clear search highlight on <Esc>
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Scroll two lines at once
vim.keymap.set("n", "<C-e>", "2<C-e>", { desc = "Scroll down 2 lines" })
vim.keymap.set("n", "<C-y>", "2<C-y>", { desc = "Scroll up 2 lines" })

-- Paste without losing yank register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Switch to last buffer
vim.keymap.set("n", "<leader><leader>", "<Cmd>buffer#<CR>", { silent = true })

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
