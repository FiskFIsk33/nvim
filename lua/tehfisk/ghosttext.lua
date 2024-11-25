
local function ghoststart()
	--vim.api.nvim_command('set verbose=9')
	vim.api.nvim_command('echo "ghoststart"')
	vim.api.nvim_command('set filetype=text')
	vim.api.nvim_command('set buftype=""')
	vim.api.nvim_command('w! /tmp/.ghosttmpfile')
	vim.api.nvim_command('echo "ghoststart"')
end

local ghostgroup = vim.api.nvim_create_augroup('nvim_ghost_user_autocommands', { clear = true })


vim.api.nvim_create_autocmd({ 'User' }, {
  pattern = 'ghost/*',
  group = ghostgroup,
  callback = ghoststart,
})
vim.api.nvim_create_autocmd({ 'User' }, {
  pattern = 'ghost/*.overleaf.com',
  group = ghostgroup,
  command = 'set filetype=tex',
})
vim.api.nvim_create_autocmd({ 'User' }, {
  pattern = 'ghost/*.reddit.com',
  group = ghostgroup,
  command = 'setfiletype markdown',
})
vim.api.nvim_create_autocmd({ 'User' }, {
  pattern = 'ghost/*tartrek.websit*',
  group = ghostgroup,
  command = 'setfiletype markdown',
})
vim.api.nvim_create_autocmd({ 'User' }, {
  pattern = 'ghost/*',
  group = ghostgroup,
  command = 'LspStart',
})

