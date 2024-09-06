return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		notify_on_error = false,
		formatters_by_ft = {
			c = { "clang-format" },
			css = { "prettierd", "prettier" },
			html = { "prettierd", "prettier" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			lua = { "stylua" },
			python = { "black" },
			scss = { "prettierd", "prettier" },
			typescript = { "prettierd", "prettier", stop_after_first = true },
			vue = { "prettierd", "prettier", stop_after_first = true },
		},
	},
}
