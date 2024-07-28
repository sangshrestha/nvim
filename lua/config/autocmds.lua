-- Format on Save
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function(args)
    require("conform").format({
      bufnr = args.buf,
      lsp_fallback = true,
      quiet = true,
    })
  end,
})

-- Highlight when yanking text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

--  Opening neovim from a folder sets the folder path as the root directory
vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Opening neovim from a folder sets the folder path as the root directory",
  group = vim.api.nvim_create_augroup("cdpwd", { clear = true }),
  pattern = "*",
  callback = function()
    local path = vim.fn.expand("<amatch>")
    if vim.fn.isdirectory(path) == 1 then
      vim.cmd("cd " .. path)
    end
  end,
})

-- Remeber last cursor position
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  desc = "Open file at the last position it was edited earlier",
  command = 'silent! normal! g`"zv',
})
