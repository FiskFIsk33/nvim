local lsp_zero = require('lsp-zero')
local builtin = require('telescope.builtin')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })
	vim.keymap.set('n', 'gd', builtin.lsp_definitions, {}) --go definition
	vim.keymap.set('n', 'gt', builtin.lsp_type_definitions, {}) --go definition
	vim.keymap.set('n', 'gi', builtin.lsp_implementations, {}) --go implementation
	vim.keymap.set('n', 'gr', builtin.lsp_references, {}) --go list refs
	vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {}) --go prev diagnostic
end)
--
----
require("mason").setup({})
require('mason-lspconfig').setup({
	handlers = {
		lsp_zero.default_setup,
		lua_ls = function()
			require('lspconfig').lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { 'vim' }
						}
					}
				}
			})
		end
--		,
--		tsserver = function()
--			require('lspconfig').tsserver.setup({
--				single_file_support = false,
--				settings = {
--					typescript = {
--						format = {
--							enable = false,
--						}
--					}
--				},
--				on_attach = function(client, bufnr)
--				end
--			})
--		end

	},
})
