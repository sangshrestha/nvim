local opt = vim.opt
local tabspace = 2

opt.hlsearch = false
opt.number = true
opt.tabstop = tabspace
opt.softtabstop = tabspace
opt.shiftwidth = tabspace
opt.expandtab = true
opt.scrolloff = 2
opt.clipboard = "unnamedplus"
opt.ignorecase = true
opt.smartcase = true
opt.relativenumber = true

-- recursive search
opt.path:append("**")

-- remove auto commenting next line
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})

-- lsp enable
vim.lsp.config["clangd"] = {
  cmd = { "clangd" },
  filetypes = { "c" },
  init_options = {
    fallbackFlags = {
      "-D_CRT_SECURE_NO_DEPRECATE", -- ignore warnings telling you to use window specific api
    },
  },
}

vim.lsp.config["ts_ls"] = {
  cmd = { "typescript-language-server" , "--stdio" },
  filetypes = { "javascript", "typescript" },
}

vim.lsp.enable("clangd")
vim.lsp.enable("ts_ls")

-- lsp keybinds
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
  end,
})

-- diagnostic text
vim.diagnostic.config({
  virtual_text = true,
})

-- colorscheme
vim.cmd([[colorscheme quiet]])

-- transparency
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
