return {
	-- {
	--   "folke/tokyonight.nvim",
	--   lazy = false,
	--   priority = 999,
	--   opts = {},
	--   config = function()
	--     require("tokyonight").setup({
	--       on_colors = function(colors)
	--         colors.comment = "#767fb8"
	--         colors.fg_gutter = "#666d91"
	--       end,
	--     })
	--     vim.cmd.colorscheme("tokyonight-moon")
	--   end,
	-- },

	{
		"navarasu/onedark.nvim",
		lazy = false,
		priority = 999,
		opts = {},
		config = function()
			require("onedark").setup({
				style = "dark",
			})
			vim.cmd.colorscheme("onedark")
		end,
	},
}
