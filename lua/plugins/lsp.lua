return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local masonconfig = require("mason-lspconfig")
		local cmp_lsp = require("cmp_nvim_lsp")

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("LspKeymaps", { clear = true }),
			callback = function(event)
				local map = function(keys, func, desc)
					vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
				end

				map("<leader>rn", vim.lsp.buf.rename, "Rename")
				map("<leader>ca", vim.lsp.buf.code_action, "Code action")
				map("K", vim.lsp.buf.hover, "Hover Documentation")
			end,
		})

		-- Extend lsp capabilities
		local capabilities = {}
		capabilities = vim.tbl_deep_extend(
			"force",
			{},
			vim.lsp.protocol.make_client_capabilities(),
			cmp_lsp.default_capabilities()
		)

		-- Configure lsp server
		local servers = {
			clangd = {
				settings = {
					clangd = {
						cmd = { "clangd", "-fallback-style=microsoft" },
					},
				},
			},
			cssls = {},
			emmet_language_server = {},
			lua_ls = {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			},
			pylsp = {
				settings = {
					pylsp = {
						plugins = {
							pycodestyle = {
								enabled = false,
							},
						},
					},
				},
			},
			ts_ls = {},
		}

		masonconfig.setup({
			handlers = {
				function(server_name)
					local server = servers[server_name] or {}

					server.capabilities = capabilities
					lspconfig[server_name].setup(server)
				end,
			},
		})
	end,
}
