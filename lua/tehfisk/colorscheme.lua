vim.opt.termguicolors = true
--vim.g.codedark_italics = 1
--vim.g.codedark_transparent = 1

--vim.cmd [[ colorscheme codedark ]]

-- Gruvbox options:
require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})
--vim.o.background = "dark" -- or "light" for light mode
--vim.cmd("colorscheme gruvbox")
--vim.cmd("hi Normal guibg=NONE ctrembg=NONE")
--vim.cmd("hi! Normal guibg=NONE ctrembg=NONE")
   
  
vim.cmd("let g:gruvbox_transparent_bg = 1")
vim.cmd("autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE")
vim.cmd("autocmd VimEnter * hi SignColumn ctermbg=NONE guibg=NONE")
vim.cmd("colorscheme gruvbox")
