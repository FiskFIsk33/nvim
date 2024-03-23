require("lazy").setup({

	"lervag/vimtex",
	 { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	'junegunn/fzf.vim',
	'lambdalisue/suda.vim',

	--- Uncomment the two plugins below if you want to manage the language servers from neovim
	{ 'williamboman/mason.nvim' },
	{ 'williamboman/mason-lspconfig.nvim' },
	{ 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'L3MON4D3/LuaSnip' },
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.3',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		'nvim-telescope/telescope-fzf-native.nvim',
		build =
		'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
	},
	{ 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
	'stevearc/dressing.nvim',
	'theprimeagen/vim-be-good',
	'mbbill/undotree',
	'tpope/vim-fugitive',
	{ "catppuccin/nvim",           name = "catppuccin",                             priority = 1000 },
	'jacoborus/tender.vim',
	'aklt/plantuml-syntax',
	"FabijanZulj/blame.nvim",
	{
	    'windwp/nvim-autopairs',
	    event = "InsertEnter",
	    config = true
	    -- use opts = {} for passing setup options
	    -- this is equalent to setup({}) function
	},

})
