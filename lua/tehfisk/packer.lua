-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use 'lervag/vimtex'

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

	use 'junegunn/fzf.vim'
	--use 'mrjones2014/nvim-ts-rainbow'
	use 'lambdalisue/suda.vim'
	--Lsp-Zero
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment these if you want to manage LSP servers from neovim
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
		}
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		-- or                            , branch = '0.1.x',
		requires = {
			{ 'nvim-lua/plenary.nvim' },
		}
	}
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use { 'nvim-telescope/telescope-ui-select.nvim' }
	use 'theprimeagen/vim-be-good'
	use 'mbbill/undotree'
	use 'tpope/vim-fugitive'


	--	use 'hiphish/rainbow-delimiters.nvim'
end)
