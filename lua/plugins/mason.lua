return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- Specify lsp servers to install
    require("mason").setup({})
    require("mason-tool-installer").setup({
      ensure_installed = {
        "lua_ls",
        "stylua",
        "tsserver",
        "prettier",
        "prettierd",
      },
    })
  end,
}
