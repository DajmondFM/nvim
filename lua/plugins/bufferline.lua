return {
  'akinsho/bufferline.nvim',
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
    vim.keymap.set('n', '<S-h>', '<Cmd>BufferLineCyclePrev<CR>')
    vim.keymap.set('n', '<S-l>', '<Cmd>BufferLineCycleNext<CR>')
    vim.keymap.set('n', '<leader>k', '<Cmd>BufferLinePickClose<CR>')

    vim.keymap.set('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>')
    vim.keymap.set('n', '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>')
    vim.keymap.set('n', '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>')
    vim.keymap.set('n', '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>')
    vim.keymap.set('n', '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>')
    vim.keymap.set('n', '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>')
    vim.keymap.set('n', '<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>')
    vim.keymap.set('n', '<leader>8', '<Cmd>BufferLineGoToBuffer 8<CR>')
    vim.keymap.set('n', '<leader>9', '<Cmd>BufferLineGoToBuffer 9<CR>')
  end
}
