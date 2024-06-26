return {
  'numToStr/Comment.nvim',
  event = "VeryLazy",
  lazy = false,
  config = function()
     require("Comment").setup({
       toggler = {
         ---Line-comment toggle keymap
           line = 'gcc',
         ---Block-comment toggle keymap
           block = 'gbc',
       }
     })
    vim.keymap.set("n", "<C-_>", "gcc", { remap = true })
    vim.keymap.set("v", "<C-_>", "gc", { remap = true })
    vim.keymap.set("n", "<C-/>", "gcc", { remap = true })
    vim.keymap.set("v", "<C-/>", "gc", { remap = true })
  end
}
