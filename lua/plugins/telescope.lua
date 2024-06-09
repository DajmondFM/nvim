return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      -- vim.keymap.set('n', '<leader>as', builtin.keymaps, {})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = { require("telescope.themes").get_dropdown {} },
        }

      })
      require("telescope").load_extension("ui-select")
    end
  },
  {
    'jonarrien/telescope-cmdline.nvim',
    keys = {
      { ':', ':Telescope cmdline<CR>' }
    },

    config = function()
      -- require('telescope').setup()
      require('telescope').load_extension('cmdline')
    end
  }
}
