local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("vim")
require("lazy").setup("plugins")

--vim.cmd("set tabstop=2")
--vim.cmd("set shiftwidth=2")
--vim.cmd("set expandtab")
--vim.cmd("set softtabstop=2")
-- vim.opt.tabstop = 2
-- vim.opt.shiftwidth = 2
-- vim.opt.softtabstop = 2
-- vim.opt.expandtab = true
vim.api.nvim_create_autocmd("Filetype", {
  pattern = "*",
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.softtabstop = 2
    vim.opt.expandtab = true
  end
})

function _TAB4()
  vim.opt.tabstop = 4
  vim.opt.shiftwidth = 4
  vim.opt.softtabstop = 4
  vim.opt.expandtab = true
end

function _TAB2()
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.softtabstop = 2
  vim.opt.expandtab = true
end

vim.api.nvim_set_keymap("n", "<leader>4", ":lua _TAB4()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>2", ":lua _TAB2()<CR>", { noremap = true, silent = true })

vim.api.nvim_create_autocmd("Filetype", {
  pattern = "neo-tree",
  callback = function()
    vim.cmd("set nolist")
  end
})
