return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local fzf = require("fzf-lua")

		-- calling `setup` is optional for customization
		fzf.setup({})

		vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Fzf Files" })
		vim.keymap.set("n", "<leader>fF", fzf.git_files, { desc = "Fzf Git Files" })
		vim.keymap.set("n", "<leader>ss", fzf.live_grep_native, { desc = "Grep string" })
		vim.keymap.set("n", "<leader>bb", fzf.buffers, { desc = "Fzf buffers" })
		vim.keymap.set("n", "<leader>sc", fzf.spell_suggest, { desc = "Spell suggest" })

		vim.keymap.set("n", "<leader>fc", function()
			fzf.files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "[f]ind [c]onfig files" })
	end,
}
