local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

require('telescope').setup({
	defaults = {
		layout_config = {
			horizontal = {
				width = function(_, max_columns)
					local percentage = 0.9
					local max = 140
					return math.min(math.floor(percentage * max_columns), max)
				end,
			}

			-- other layout configuration here
		},
		-- other defaults configuration here
	},
	vim.api.nvim_set_hl(0, 'TelescopeBorder', { fg = "#555555"}),
	vim.api.nvim_set_hl(0, 'TelescopeNormal', { fg = "#BBBBBB"}),
	vim.api.nvim_set_hl(0, 'TelescopeSelection', { fg = "#FFFFFF",bg ="#333333"}),
	vim.api.nvim_set_hl(0, 'TelescopeMatching', { fg = "orange"}),
	vim.api.nvim_set_hl(0, 'TelescopeSelectionCaret', { fg = "red"}),
	
})
