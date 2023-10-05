vim.keymap.set("i", "jk", "<ESC>")

vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")

--FZF
vim.keymap.set("n", "<C-P>", ":Files<CR>")
vim.keymap.set("n", "<C-Å>", ":GFiles<CR>")

--keep centered when moving around
vim.keymap.set("n", "<C-D>", "<C-D>zz")
vim.keymap.set("n", "<C-U>", "<C-U>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--vim.cmd('command! -nargs=? -complete=file bajsbajs call s:write(<q-args>)')
vim.api.nvim_create_user_command('Sw', 'SudaWrite', {})
