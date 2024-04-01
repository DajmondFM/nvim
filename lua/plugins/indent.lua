return {
  "lukas-reineke/indent-blankline.nvim", 
  main = "ibl",
  config = function()
    require("ibl").setup({
      indent = { char = "▏",},
      --buftype_exclude = {"terminal"},
      scope = { enabled = false },
      --highlight = { "Function", "Label" },    

    })

  end
}
