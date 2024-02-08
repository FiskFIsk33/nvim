vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.tex_flavor = 'later'

require("tehfisk.bootstrapPacker")
require("tehfisk.packer")
require("tehfisk.colorscheme")
require("tehfisk.remap")
require("tehfisk.vimtex")
require("tehfisk.autocmd")
require("tehfisk.lsp")
require("tehfisk.cmp")
require("tehfisk.telescope")
require("tehfisk.lualine")


require('plantuml').setup(
	{
		renderer = {
			type = 'image',
			options = {
				split_cmd = 'vsplit', -- Allowed values: `split`, `vsplit`.
			}
		},
		render_on_write = true, -- Set to false to disable auto-rendering.
	}
)
--require("tehfisk.rainbow")
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
