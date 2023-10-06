vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("tehfisk.packer")
require("tehfisk.colorscheme")
require("tehfisk.remap")
require("tehfisk.vimtex")
require("tehfisk.autocmd")
require("tehfisk.lsp")

vim.opt.encoding = 'utf-8'
vim.opt.clipboard = 'unnamedplus'

	--avoids shitting ~ files all over the place
vim.opt.undofile = true
vim.opt.backupdir = '/home/fisk/.vimtmp//,.'
vim.opt.undodir = '/home/fisk/.vimtmp//,.'
vim.opt.directory = '/home/fisk/.vimtmp//'

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.splitright = true
vim.opt.splitbelow = true
