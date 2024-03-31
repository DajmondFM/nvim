
return {
    "Exafunction/codeium.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        require("codeium").setup({
          --enable_chat=true,
        })

        -- local cmp_status, cmp = pcall(require, "cmp")
        -- if not cmp_status then
        --     return
        -- end

        -- require("cmp").setup({
        --     mapping = cmp.mapping.preset.insert({
        --         ["<C-[>"] = cmp.mapping.select_prev_item(),
        --         ["<C-]>"] = cmp.mapping.select_next_item(),
        --         ["<C-Space>"] = cmp.mapping.complete(),
        --         ["<C-e>"] = cmp.mapping.abort(),
        --         ["<CR>"] = cmp.mapping.confirm({ select = true }),
        --     }),
        --     sources = {
        --         { name = "codeium" }
        --     }
        -- })

    end
}
-- return {
--     'Exafunction/codeium.vim',
--     event = 'BufEnter',
--   }
