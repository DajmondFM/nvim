return {
  "Isrothy/neominimap.nvim",
  event = "VeryLazy",
  enabled = false,
  config = function()
    require("neominimap").setup()
  end
}
