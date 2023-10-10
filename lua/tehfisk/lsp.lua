local lsp_zero = require('lsp-zero')
local builtin = require('telescope.builtin')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })
end)
--
----
require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup_handlers {
	-- The first entry (without a key) will be the default handler
	-- and will be called for each installed server that doesn't have
	-- a dedicated handler.
	function(server_name)                      -- default handler (optional)
		vim.keymap.set('n', 'gd', builtin.lsp_definitions, {}) --go definition
		vim.keymap.set('n', 'gt', builtin.lsp_type_definitions, {}) --go definition
		vim.keymap.set('n', 'gi', builtin.lsp_implementations, {}) --go implementation
		vim.keymap.set('n', 'gr', builtin.lsp_references, {}) --go list refs
		vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {}) --go prev diagnostic 
		require("lspconfig")[server_name].setup { lsp_zero.default_setup }
	end,
}
