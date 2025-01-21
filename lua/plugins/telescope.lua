return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      -- local builtin = require("telescope.builtin")
      -- vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      -- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      -- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      -- vim.keymap.set('n', '<leader>as', builtin.keymaps, {})
    end,
    keys = {
      {"<C-p>", "<cmd>Telescope find_files<cr>", desc = "Telescope Find files"},
      {"<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope Buffers"},
      {"<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope Live grep"},
      {"<leader>as", "<cmd>Telescope keymaps<cr>", desc = "Telescope Keymaps"},
    }
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    event = "VeryLazy",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = { require("telescope.themes").get_dropdown {} },
        }

      })
      require("telescope").load_extension("ui-select")
    end
  },
  -- {
  --   'jonarrien/telescope-cmdline.nvim',
  --   keys = {
  --     { ':', ':Telescope cmdline<CR>' }
  --   },
  --
  --   config = function()
  --     -- require('telescope').setup()
  --     require('telescope').load_extension('cmdline')
  --   end
  -- }
}
