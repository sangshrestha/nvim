return {
	"ibhagwan/fzf-lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		{ "junegunn/fzf", build = "/install --bin" },
	},
	config = function()
		local fzf = require("fzf-lua")

		vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Find Files" })
		vim.keymap.set("n", "<leader>fF", fzf.git_files, { desc = "Find Git Files" })
		vim.keymap.set("n", "<leader>ss", fzf.live_grep_native, { desc = "Grep string" })
		vim.keymap.set("n", "<leader>bb", fzf.buffers, { desc = "Find buffers" })
		vim.keymap.set("n", "<leader>sc", fzf.spell_suggest, { desc = "Spell suggest" })

		vim.keymap.set("n", "<leader>fc", function()
			fzf.files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "Find in nvim" })
	end,
}
