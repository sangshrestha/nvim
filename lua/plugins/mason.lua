return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup({})
		require("mason-tool-installer").setup({
			ensure_installed = {
				"emmet_language_server",
				"cssls",
				"lua_ls",
				"stylua",
				"tsserver",
				"prettier",
				"prettierd",
				"pylsp",
				"black",
				"clangd",
			},
		})
	end,
}
