-- Clear search highlight on <Esc>
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Paste without losing yank register
vim.keymap.set("x", "<leader>p", [["_dP]])
