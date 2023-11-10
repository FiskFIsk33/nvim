local builtin = require('telescope.builtin')



--live grep in git dir with fallback
local function live_grep_from_project_git_root()
	local function is_git_repo()
		vim.fn.system("git rev-parse --is-inside-work-tree")

		return vim.v.shell_error == 0
	end

	local function get_git_root()
		local dot_git_path = vim.fn.finddir(".git", ".;")
		return vim.fn.fnamemodify(dot_git_path, ":h")
	end

	local opts = {}

	if is_git_repo() then
		opts = {
			cwd = get_git_root(),
		}
	end

	require("telescope.builtin").live_grep(opts)
end

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', live_grep_from_project_git_root, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.command_history, {})
vim.keymap.set('n', '<leader>fs', builtin.spell_suggest, {})
vim.keymap.set('n', '<leader>fr', builtin.registers, {})

local telescopeConfig = require("telescope.config")

-- Clone the default Telescope configuration
local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

-- I want to search in hidden/dot files.
table.insert(vimgrep_arguments, "--hidden")
table.insert(vimgrep_arguments, "--follow")
-- I don't want to search in the `.git` directory.
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/.git/*")

local actions = require("telescope.actions")

require('telescope').setup({
	defaults = {
		vimgrep_arguments = vimgrep_arguments,

		mappings = {
			i = {
				["<esc>"] = actions.close
			},
		},
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
		live_grep = {

		},
		find_files = {
			hidden = true,
			follow = true,
		},
		command_history = {
			layout_config = {
				horizontal = {
					width = 50,
					height = 40,
				}
			}
		},
		spell_suggest = {
			layout_strategy = 'cursor',
			sorting_strategy = 'ascending',
			layout_config = {
				width = 20,
				height = 20,
			},
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

