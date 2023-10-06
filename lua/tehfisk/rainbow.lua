-- This module contains a number of default definitions
local rainbow_delimiters = require 'rainbow-delimiters'

vim.g.rainbow_delimiters = {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },
}

local col = {
            -- Syntax colors
            vscGray = '#808080',
            vscViolet = '#646695',
            vscBlue = '#569CD6',
            vscAccentBlue = '#4FC1FE',
            vscDarkBlue = '#223E55',
            vscMediumBlue = '#18a2fe',
            vscLightBlue = '#9CDCFE',
            vscGreen = '#4dba34',
            vscBlueGreen = '#4EC9B0',
            vscLightGreen = '#B5CEA8',
            vscRed = '#F44747',
            vscOrange = '#f27324',
            vscLightRed = '#D16969',
            vscYellowOrange = '#D7BA7D',
            vscYellow = '#DCDCAA',
            vscDarkYellow = '#FFD602',
            vscPink = '#C586C0',
        }
print(col.vscYellow)
    vim.cmd(string.format([[highlight RainbowDelimiterRed  guifg=%s ctermfg=White]],col.vscRed))
    vim.cmd(string.format([[highlight RainbowDelimiterYellow  guifg=%s ctermfg=White]],col.vscDarkYellow))
    vim.cmd(string.format([[highlight RainbowDelimiterBlue  guifg=%s ctermfg=White]],col.vscBlue))
    vim.cmd(string.format([[highlight RainbowDelimiterOrange  guifg=%s ctermfg=White]],col.vscOrange))
    vim.cmd(string.format([[highlight RainbowDelimiterGreen  guifg=%s ctermfg=White]],col.vscGreen))
    vim.cmd(string.format([[highlight RainbowDelimiterViolet  guifg=%s ctermfg=White]],col.vscViolet))
    vim.cmd(string.format([[highlight RainbowDelimiterCyan  guifg=%s ctermfg=White]],col.vscBlueGreen))
