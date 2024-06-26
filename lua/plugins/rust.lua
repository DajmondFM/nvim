return {
  {
    'saecki/crates.nvim',
    tag = 'stable',
    ft = {"toml"},
    config = function()
      require('crates').setup({})
    end,
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^4', -- Recommended
    lazy = false, -- This plugin is already lazy
    -- ft = {"rs", "rust"}
    config = function()
      -- vim.g.rustfmt_autosave = 1
      local bufnr = vim.api.nvim_get_current_buf()
      vim.keymap.set(
        "n", 
        "<leader>a", 
        function()
          vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
          -- or vim.lsp.buf.codeAction() if you don't want grouping.
        end,
        { silent = true, buffer = bufnr }
      )
    end
  }
}
