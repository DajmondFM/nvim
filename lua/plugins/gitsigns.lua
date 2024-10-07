return {
  'lewis6991/gitsigns.nvim',
  event = "VeryLazy",
  config = function()
    require('gitsigns').setup()
    require('scrollbar.handlers.gitsigns').setup()
  end
}
