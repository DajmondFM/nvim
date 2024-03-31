return {
  'numToStr/Comment.nvim',
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
   end
}
