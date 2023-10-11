local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.command_history, {})

require('telescope').setup({
	defaults = {
		layout_config = {
			horizontal = {
				width = 0.9,
				height = 40
			}


			-- other layout configuration here
		},
		-- other defaults configuration here

		file_ignore_patterns = {
			".local"
		},
	},
	pickers = {
		find_files = {
			hidden = true
		},
		command_history = {
			layout_config = {
				horizontal = {
					width = 50,
					height = 40
				}
			}
		}
	},
	vim.api.nvim_set_hl(0, 'TelescopeBorder', { fg = "#555555" }),
	vim.api.nvim_set_hl(0, 'TelescopeNormal', { fg = "#BBBBBB" }),
	vim.api.nvim_set_hl(0, 'TelescopeSelection', { fg = "#FFFFFF", bg = "#333333" }),
	vim.api.nvim_set_hl(0, 'TelescopeMatching', { fg = "orange" }),
	vim.api.nvim_set_hl(0, 'TelescopeSelectionCaret', { fg = "red" }),

})
require('telescope').setup {}
require('telescope').load_extension('fzf')
