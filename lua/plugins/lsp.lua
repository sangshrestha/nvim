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

    -- Extend lsp capabilities
    local capabilities =
      vim.tbl_deep_extend("force", {}, vim.lsp.protocol.make_client_capabilities(), cmp_lsp.default_capabilities())

    -- Configure lsp server
    local servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      },
      tsserver = {},
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
