return{
  'akinsho/toggleterm.nvim',
  event = "VeryLazy",
  config = function()
    require('toggleterm').setup({
      size = 10,
      open_mapping = [[<c-\>]],
      direction = 'float',
      -- shell = 'powershell.exe',
      float_opts = {
        border = 'curved',
        title_pos = 'center',
      },
    })
    local Terminal  = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

    function _LAZYGIT_TOGGLE()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", {noremap = true, silent = true})
  end
}
