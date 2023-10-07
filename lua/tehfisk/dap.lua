require("mason-nvim-dap").setup({
	ensure_installed = {},
	handlers = {
		function(config)
			-- all sources with no handler get passed here

			-- Keep original functionality
			require('mason-nvim-dap').default_setup(config)
			vim.keymap.set("n", "<leader>b", function() require'dap'.toggle_breakpoint() end)
		end,
	}
})

