return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup {
        ensure_installed = {"lua", "rust", "python", "toml", "json", "html", "css", "cpp", "c", }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
        -- ensure_installed = "all",
        exclude = { "" },
        highlight = { enable = true},
        indent = { enable = true },
    }
    end
}
