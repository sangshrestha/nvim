return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[f]ind [f]iles" })
    vim.keymap.set("n", "<leader>fF", builtin.git_files, { desc = "[f]ind git [F]iles" })
    vim.keymap.set("n", "<leader>ss", builtin.grep_string, { desc = "[s]earch [s]tring" })
    vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Search [f]iles opened [r]ecently" })
    vim.keymap.set("n", "<leader>bb", builtin.buffers, { desc = "[ ] Find existing buffers" })

    -- Shortcut for searching your Neovim configuration files
    vim.keymap.set("n", "<leader>fc", function()
      builtin.find_files({ cwd = vim.fn.stdpath("config") })
    end, { desc = "[f]ind [c]onfig files" })
  end,
}
