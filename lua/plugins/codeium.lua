-- return {
--   "Exafunction/codeium.nvim",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     "hrsh7th/nvim-cmp",
--   },
--   config = function()
--     require("codeium").setup({
--       enable_chat = true,
--       -- language_server_download_url= "https://mirror.of.github.com",
--     })
--
--     -- local cmp_status, cmp = pcall(require, "cmp")
--     -- if not cmp_status then
--     --     return
--     -- end
--
--     -- require("cmp").setup({
--     --     mapping = cmp.mapping.preset.insert({
--     --         ["<C-[>"] = cmp.mapping.select_prev_item(),
--     --         ["<C-]>"] = cmp.mapping.select_next_item(),
--     --         ["<C-Space>"] = cmp.mapping.complete(),
--     --         ["<C-e>"] = cmp.mapping.abort(),
--     --         ["<CR>"] = cmp.mapping.confirm({ select = true }),
--     --     }),
--     --     sources = {
--     --         { name = "codeium" }
--     --     }
--     -- })
--
--   end
-- }
return {
  'Exafunction/codeium.vim',
  commit = "289eb724e5d6fab2263e94a1ad6e54afebefafb2",
  event = 'BufEnter',
  config = function()
    vim.keymap.set('n', '<leader>ch', '<cmd>call codeium#Chat()<CR>')
  end
}
