return {
  "Isrothy/neominimap.nvim",
  -- event = "VeryLazy",
  enabled = false,
  lazy = false,
  config = function()
    require("neominimap").setup()
  end
}
