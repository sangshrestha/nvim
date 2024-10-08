return {
	"ibhagwan/fzf-lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local fzf = require("fzf-lua")

		vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Find Files" })
		vim.keymap.set("n", "<leader>fF", fzf.git_files, { desc = "Find Git Files" })
		vim.keymap.set("n", "<leader>ss", fzf.live_grep_native, { desc = "Grep string" })
		vim.keymap.set("n", "<leader>bb", fzf.buffers, { desc = "Find buffers" })
		vim.keymap.set("n", "<leader>sc", fzf.spell_suggest, { desc = "Spell suggest" })

		vim.keymap.set({ "n" }, "<leader>dd", function()
			require("fzf-lua").files({
				cmd = "fd -t=d",
				cwd = vim.fn.getcwd(),
			})
		end, { desc = "Search dir in parent dir" })

		vim.keymap.set({ "n" }, "<leader>dD", function()
			require("fzf-lua").files({
				cmd = "fd -t=d",
				cwd = vim.fn.trim(vim.fn.system("git rev-parse --show-toplevel")),
			})
		end, { desc = "Search dir in git root" })

		vim.keymap.set("n", "<leader>fc", function()
			fzf.files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "Find in nvim" })
	end,
}
