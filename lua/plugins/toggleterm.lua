return {
  "akinsho/toggleterm.nvim",
  config = function()
    local computeHorizontalSize = function()
      local width = vim.api.nvim_win_get_width(0) * 2

      if width - 100 > 100 then
        return width - 100
      else
        return width
      end
    end

    require("toggleterm").setup({
      size = computeHorizontalSize,
      open_mapping = [[<c-\>]],
      persist_size = false,
      terminal_mappings = true,
      hide_numbers = true,
      autochdir = true,
      start_in_insert = true,
      direction = "vertical",
      shading_factor = -10,
    })
  end,
}
