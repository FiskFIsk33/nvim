vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_general_viewer = 'zathura'
vim.g.vimtex_view_forward_search_on_start = false
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.tex_flavor = 'latex'

--vim.g.vimtex_compiler_latexmk = {'aux-dir': {-> expand("%:t:r")}}
--vim.g.vimtex_compiler_latexmk.out_dir = 'lol'

vim.g.vimtex_compiler_latexmk = {
	aux_dir = 'test',
}
