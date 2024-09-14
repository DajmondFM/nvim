return {
  "nvim-treesitter/nvim-treesitter",
  event = "VeryLazy",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup {
      ensure_installed = {"lua", "rust", "python", "toml", "json", "html", "css", "cpp", "c"}, -- }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
      -- ensure_installed = "all",
      exclude = { "" },
      highlight = {
        enable = true,
        disable = function(lang, buff)
          local max_filesize = 256 * 1024 -- 256KB
          local ok, stats = pcall(vim.loop.fs_stat, buff)
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end},
      indent = { enable = true },
    }
  end
}
