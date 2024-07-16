-- return {{
--   "lukas-reineke/indent-blankline.nvim", 
--   event =  "VeryLazy",
--   main = "ibl",
--   config = function()
--     require("ibl").setup({
--       indent = { char = "▏",},
--       --buftype_exclude = {"terminal"},
--       scope = { enabled = false },
--       --highlight = { "Function", "Label" },    
--
--     })
--
--   end
-- },
--
return{
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require('hlchunk').setup({
      chunk = {
        enable = true
        -- ...
      },
      indent = {
        enable = true,
        chars = { "│" },
        use_treesitter = true,
        -- ...
      },
      line_num = {
        enable = true
        -- ...
      }
    })  end
}
