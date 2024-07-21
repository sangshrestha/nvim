return {
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 999,
    config = function()
      vim.g.everforest_background = "hard"
      vim.g.everforest_transparent_background = 2
      vim.g.everforest_ui_contrast = "high"
      vim.cmd.colorscheme("everforest")
    end,
  },
}
