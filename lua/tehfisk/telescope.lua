local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

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
	},
	pickers = {
		find_files = {
			hidden = true
		},
	},
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown {
				-- even more opts
			}

			-- pseudo code / specification for writing custom displays, like the one
			-- for "codeactions"
			-- specific_opts = {
			--   [kind] = {
			--     make_indexed = function(items) -> indexed_items, width,
			--     make_displayer = function(widths) -> displayer
			--     make_display = function(displayer) -> function(e)
			--     make_ordinal = function(e) -> string
			--   },
			--   -- for example to disable the custom builtin "codeactions" display
			--      do the following
			--   codeactions = false,
			-- }
		}
	},
	vim.api.nvim_set_hl(0, 'TelescopeBorder', { fg = "#555555" }),
	vim.api.nvim_set_hl(0, 'TelescopeNormal', { fg = "#BBBBBB" }),
	vim.api.nvim_set_hl(0, 'TelescopeSelection', { fg = "#FFFFFF", bg = "#333333" }),
	vim.api.nvim_set_hl(0, 'TelescopeMatching', { fg = "orange" }),
	vim.api.nvim_set_hl(0, 'TelescopeSelectionCaret', { fg = "red" }),

})

