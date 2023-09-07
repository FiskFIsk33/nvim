require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  --ensure_installed = { "help", "bash", "vim", "java", "c", "lua", "vim", "help", "query" },
  ensure_installed = "all",

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,


  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,
    disable = { "latex" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
<<<<<<< HEAD
--  rainbow = {
--	  enable = true,
	  --hlgroups = {
          --     'TSRainbowYellow',
          --     'TSRainbowBlue',
          --     'TSRainbowOrange',
          --     'TSRainbowGreen',
          --     'TSRainbowViolet',
          --     'TSRainbowCyan',
	  --     'TSRainbowRed'

	  --}
--  },
=======
  rainbow = {
	  enable = true,
	  hlgroups = {
               'TSRainbowYellow',
               'TSRainbowBlue',
               'TSRainbowOrange',
               'TSRainbowGreen',
               'TSRainbowViolet',
               'TSRainbowCyan',
	  --     'TSRainbowRed'

	  }
  },
>>>>>>> 940b5ac6a95181196a5d760295414db3d7206d1c
}
