-- Format on Save
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function(args)
		require("conform").format({
			bufnr = args.buf,
			lsp_fallback = true,
			quiet = true,
		})
	end,
})

-- Highlight when yanking text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Remeber last cursor position in file
vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = "*",
	desc = "Open file at the last position it was edited earlier",
	command = 'silent! normal! g`"zv',
})
