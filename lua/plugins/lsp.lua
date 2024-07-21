return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "folke/neodev.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    require("neodev").setup({})

    local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

    local servers = {
      lua_ls = {},
    }

    require("mason").setup({})
    require("mason-tool-installer").setup({
      ensure_installed = {
        "lua_ls",
        "stylua",
      },
    })
    require("mason-lspconfig").setup({
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          server.capabilities = lsp_capabilities
          require("lspconfig")[server_name].setup(server)
        end,
      },
    })
  end,
}
