vim.cmd("set number")
vim.cmd("set laststatus=2")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set wrap")
vim.g.mapleader = " "
vim.cmd("set mouse=a")
vim.cmd("set noshowmode")
vim.opt.virtualedit = "onemore"
vim.cmd("set cursorline")
vim.cmd("set termguicolors")

vim.opt.guicursor = "n-i-c:ver100,v:blinkwait300-blinkon250-blinkoff200"

vim.keymap.set('n', '<C-s>', '<Cmd>w<CR>')
vim.keymap.set('n', '<leader>h', '<Cmd>sp<CR>')
vim.keymap.set('n', '<leader>v', '<Cmd>vsp<CR>')

vim.keymap.set('n', '<A-Up>', '<Cmd>move -2<CR>')
vim.keymap.set('n', '<A-Down>', '<Cmd>move +1<CR>')

vim.keymap.set('n', '<leader>/','<Cmd>nohlsearch<CR>')

-- Kropki w miejscu spacji
vim.cmd("set list")
vim.cmd("set lcs+=space:·")

-- DZIWNE KOMENDY
--vim.cmd("set nofsync")
vim.cmd("set noswapfile")
-- vim.cmd("set nobackup")
-- vim.cmd("set nowritebackup")
--
-- Szybszy loader
vim.loader.enable()

-- Undo file
vim.cmd("set undodir=~/.config/nvim/undodir")
vim.cmd("set undofile")

vim.cmd("set foldmethod=indent")
vim.cmd("set foldlevel=99")
