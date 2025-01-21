return{
  'folke/noice.nvim',
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    require("noice").setup()
    -- vim.keymap.set('n', "<leader>nd", "<Cmd>Noice dismiss<CR>")
  end,
  keys = {
    { "<leader>nd", "<Cmd>Noice dismiss<CR>", desc = "Dismiss noice" },
  }
}
