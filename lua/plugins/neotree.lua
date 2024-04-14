return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require("neo-tree").setup({
        -- auto_open = {
        --   enable = true,
        --   delay = 0,
        --   with_cwd = false,
        -- },
        close_if_last_window = true,
        enable_git_status = true,
        window = { position = "left", width = 30 },
        diagnostics = {
          enable = true,
          highlight = {
            error = "DiagnosticError",
            warn = "DiagnosticWarning",
            info = "DiagnosticInfo",
          },
        },
      })
      vim.fn.sign_define("DiagnosticSignError",
        {text = " ", texthl = "DiagnosticSignError"})
      vim.fn.sign_define("DiagnosticSignWarn",
        {text = " ", texthl = "DiagnosticSignWarn"})
      vim.fn.sign_define("DiagnosticSignInfo",
        {text = " ", texthl = "DiagnosticSignInfo"})
      vim.fn.sign_define("DiagnosticSignHint",
        {text = "󰌵", texthl = "DiagnosticSignHint"})

     -- vim.api.nvim_create_autocmd("VimEnter", {
     --   pattern = "*",
     --   group = vim.api.nvim_create_augroup("NeotreeOnOpen", { clear = true }),
     --   once = true,
     --   callback = function(_)
     --     if vim.fn.argc() == 0 then
     --       vim.cmd("Alpha")
     --       vim.cmd("Neotree show")
     --     end
     --   end,
     -- })
    vim.api.nvim_set_keymap("n", "<C-n>", "<cmd>Neotree toggle<CR>", { noremap = true, silent = true })
  end
}
