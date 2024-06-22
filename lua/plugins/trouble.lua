return{
  "folke/trouble.nvim",
  opts = {},
  cmd = "Trouble",
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Toggle trouble" },
    { "<leader>xb", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Trouble diagnostics" },
    { "<leader>xq", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix trouble" },
    { "<leader>xl", "<cmd>Trouble loclist toggle<cr>", desc = "Loclist trouble" },
  },

  config = function()
    require("trouble").setup()
  end
}
