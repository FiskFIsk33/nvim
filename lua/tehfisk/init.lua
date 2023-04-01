require("tehfisk.packer")
require("tehfisk.colorscheme")
require("tehfisk.remap")
require("tehfisk.vimtex")
require("tehfisk.autocmd")

vim.opt.encoding = 'utf-8'
vim.opt.clipboard = 'unnamedplus'

	--avoids shitting ~ files all over the place
vim.opt.backupdir = '~/.vimtmp//,.'
vim.opt.directory = '~/.vimtmp//,.'

vim.opt.number = true 
vim.opt.relativenumber = true
