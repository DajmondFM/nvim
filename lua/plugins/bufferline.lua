return {
  'akinsho/bufferline.nvim',
  event = "VeryLazy",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    --require("bufferline").setup{}
    local bufferline = require('bufferline')
    bufferline.setup({
      options = {
        style_preset = bufferline.style_preset.no_italic,
        numbers = 'ordinal',
        max_name_length = 25,
          offsets = {{filetype = "neo-tree", text = "", padding = 1}},
      },
    })
    -- vim.keymap.set('n', '<S-h>', '<Cmd>BufferLineCyclePrev<CR>')
    -- vim.keymap.set('n', '<S-l>', '<Cmd>BufferLineCycleNext<CR>')
    -- vim.keymap.set('n', '<leader>k', '<Cmd>BufferLinePickClose<CR>')
    --
    -- vim.keymap.set('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>')
    -- vim.keymap.set('n', '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>')
    -- vim.keymap.set('n', '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>')
    -- vim.keymap.set('n', '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>')
    -- vim.keymap.set('n', '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>')
    -- vim.keymap.set('n', '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>')
    -- vim.keymap.set('n', '<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>')
    -- vim.keymap.set('n', '<leader>8', '<Cmd>BufferLineGoToBuffer 8<CR>')
    -- vim.keymap.set('n', '<leader>9', '<Cmd>BufferLineGoToBuffer 9<CR>')
  end,
  keys = {
    { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
    { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
    { "<leader>k", "<cmd>BufferLinePickClose<cr>", desc = "Pick close buffer" },

    { "<leader>1", "<cmd>BufferLineGoToBuffer 1<cr>", desc = "Go to buffer 1" },
    { "<leader>2", "<cmd>BufferLineGoToBuffer 2<cr>", desc = "Go to buffer 2" },
    { "<leader>3", "<cmd>BufferLineGoToBuffer 3<cr>", desc = "Go to buffer 3" },
    { "<leader>4", "<cmd>BufferLineGoToBuffer 4<cr>", desc = "Go to buffer 4" },
    { "<leader>5", "<cmd>BufferLineGoToBuffer 5<cr>", desc = "Go to buffer 5" },
    { "<leader>6", "<cmd>BufferLineGoToBuffer 6<cr>", desc = "Go to buffer 6" },
    { "<leader>7", "<cmd>BufferLineGoToBuffer 7<cr>", desc = "Go to buffer 7" },
    { "<leader>8", "<cmd>BufferLineGoToBuffer 8<cr>", desc = "Go to buffer 8" },
    { "<leader>9", "<cmd>BufferLineGoToBuffer 9<cr>", desc = "Go to buffer 9" },
  }
}
