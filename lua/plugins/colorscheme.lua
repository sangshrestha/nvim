return {
  -- {
  --   "sainnhe/everforest",
  --   lazy = false,
  --   priority = 999,
  --   config = function()
  --     vim.g.everforest_background = "hard"
  --     vim.g.everforest_transparent_background = 2
  --     vim.g.everforest_ui_contrast = "high"
  --     vim.cmd.colorscheme("everforest")
  --   end,
  -- },

  -- {
  --   "savq/melange-nvim",
  --   lazy = false,
  --   priority = 999,
  --   config = function()
  --     vim.g.melange_enable_font_variants = 0
  --     vim.cmd.colorscheme("melange")
  --   end,
  -- },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 999,
    opts = {},
    config = function()
      vim.cmd.colorscheme("tokyonight-moon")
    end,
  },
}
