--auto push changes in ~/.dotfiles to github
vim.cmd [[
    autocmd BufWritePost ~/.dotfiles/* :!git -C %:p:h add . && git -C %:p:h commit -a -m "vim automatic git" && git -C %:p:h push origin master && echo %:p 
]]
--auto push changes in ~/.config/nvim to github
vim.cmd [[
    autocmd BufWritePost ~/.config/nvim/* :!git -C %:p:h add . && git -C %:p:h commit -a -m "vim automatic git" && git -C %:p:h push origin master && echo %:p 
]]

--when opening latex file
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
    pattern = "*.tex",
    callback = function()
        vim.cmd [[let @t = "\\texttt{"]]
    end
})
