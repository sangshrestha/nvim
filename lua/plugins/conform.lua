return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    notify_on_error = false,
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettierd", "prettier", stop_after_first = true },
      -- python = { "isort", "black" },
    },
  },
}
