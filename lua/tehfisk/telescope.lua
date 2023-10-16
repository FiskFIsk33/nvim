require("gruvbox").load()
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.command_history, {})
vim.keymap.set('n', '<leader>fs', builtin.spell_suggest, {})

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
		},
		spell_suggest = {
			layout_strategy = 'cursor',
			sorting_strategy = "ascending",
			layout_config = {
				width = 25,
				height = 20,
			},
		}
	},
	extensions = {
		fzf = {
			fuzzy = true,                    -- false will only do exact matching
			override_generic_sorter = true,  -- override the generic sorter
			override_file_sorter = true,     -- override the file sorter
			case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		}
	},
	vim.api.nvim_set_hl(0, 'TelescopeBorder', { link = "GruvboxGray" }),
	vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { link = "GruvboxGray" }),
	vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { link = "GruvboxGray" }),
	vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { link = "GruvboxGray" }),
	--vim.api.nvim_set_hl(0, "TelescopeBorder", { link = "green" }),
	--vim.api.nvim_set_hl(0, 'TelescopeNormal', { fg = "#BBBBBB" }),
	--vim.api.nvim_set_hl(0, 'TelescopeSelection', { fg = "#FFFFFF", bg = "#333333" }),
	--vim.api.nvim_set_hl(0, 'TelescopeMatching', { fg = "orange" }),
	--vim.api.nvim_set_hl(0, 'TelescopeSelectionCaret', { fg = "red" }),

})
require('telescope').setup {}
require('telescope').load_extension('fzf')
