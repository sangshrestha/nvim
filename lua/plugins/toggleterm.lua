return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      size = function()
        return math.max(vim.api.nvim_win_get_width(0) * 2 - 90, 80)
      end,
      open_mapping = [[<c-\>]],
      persist_size = false,
      terminal_mappings = true,
      hide_numbers = true,
      autochdir = true,
      start_in_insert = true,
      direction = "vertical",
      shading_factor = -5,
    })
  end,
}
