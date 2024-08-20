return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { -- If encountering errors, see telescope-fzf-native README for installation instructions
      "nvim-telescope/telescope-fzf-native.nvim",

      -- `build` is used to run some command when the plugin is installed/updated.
      -- This is only run then, not every time Neovim starts up.
      build = "make",

      -- `cond` is a condition used to determine whether this plugin should be
      -- installed and loaded.
      cond = function()
        return vim.fn.executable("make") == 1
      end,
    },
  },
  config = function()
    -- Enable Telescope extensions if they are installed
    pcall(require("telescope").load_extension, "fzf")

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[f]ind [f]iles" })
    vim.keymap.set("n", "<leader>fF", builtin.git_files, { desc = "[f]ind git [F]iles" })
    vim.keymap.set("n", "<leader>ss", builtin.live_grep, { desc = "[s]earch [s]tring" })
    vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Search [f]iles opened [r]ecently" })
    vim.keymap.set("n", "<leader>bb", builtin.buffers, { desc = "[ ] Find existing buffers" })

    -- Shortcut for searching your Neovim configuration files
    vim.keymap.set("n", "<leader>fc", function()
      builtin.find_files({ cwd = vim.fn.stdpath("config") })
    end, { desc = "[f]ind [c]onfig files" })
  end,
}
