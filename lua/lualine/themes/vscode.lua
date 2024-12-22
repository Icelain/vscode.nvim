-- Modified Lualine theme with a relaxed, material-inspired palette
local config = require('vscode.config')
local vscode = {}
local colors = {}

if vim.o.background == 'dark' then
    colors.inactive = '#4a4a4a'
    colors.bg = '#121212'          -- Relaxed dark background
    colors.bg2 = '#1c1c1c'         -- Slightly lighter than bg for contrast
    colors.fg = '#e0e0e0'          -- Softer white for a relaxed feel
    colors.red = '#db6b9c'         -- Muted pinkish-red
    colors.green = '#6fbf7b'       -- Relaxed green
    colors.blue = '#3a73c9'        -- Material-inspired blue
    colors.lightblue = '#5f9fdb'   -- Softer light blue
    colors.yellow = '#ffc799'      -- Updated soft yellow
    colors.pink = '#ab89d1'        -- Relaxed purple
else
    colors.inactive = '#888888'
    colors.bg = '#F5F5F5'
    colors.bg2 = '#E4E4E4'
    colors.fg = '#343434'
    colors.red = '#FF0000'
    colors.green = '#008000'
    colors.blue = '#AF00DB'
    colors.lightblue = '#0451A5'
    colors.yellow = '#c08000'
    colors.pink = '#FFA3A3'
end

vscode.normal = {
    a = { fg = vim.o.background == 'dark' and colors.fg or colors.bg, bg = colors.blue, gui = 'bold' },
    b = { fg = colors.blue, bg = config.opts.transparent and 'NONE' or colors.bg2 },
    c = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg },
}

vscode.visual = {
    a = { fg = colors.bg, bg = colors.pink, gui = 'bold' },
    b = { fg = colors.pink, bg = config.opts.transparent and 'NONE' or colors.bg },
}

vscode.inactive = {
    a = { fg = colors.fg, bg = colors.bg, gui = 'bold' },
    b = { fg = colors.inactive, bg = config.opts.transparent and 'NONE' or colors.bg },
    c = { fg = colors.inactive, bg = config.opts.transparent and 'NONE' or colors.bg },
}

vscode.replace = {
    a = { fg = vim.o.background == 'dark' and colors.bg or colors.fg, bg = colors.red, gui = 'bold' },
    b = { fg = colors.red, bg = config.opts.transparent and 'NONE' or colors.bg2 },
    c = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg },
}

vscode.insert = {
    a = { fg = colors.bg, bg = colors.yellow, gui = 'bold' },
    b = { fg = colors.yellow, bg = config.opts.transparent and 'NONE' or colors.bg2 },
    c = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg },
}

vscode.terminal = {
    a = { fg = vim.o.background == 'dark' and colors.bg or colors.fg, bg = colors.green, gui = 'bold' },
    b = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg2 },
    c = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg },
}

vscode.command = {
    a = { fg = vim.o.background == 'dark' and colors.bg or colors.fg, bg = colors.pink, gui = 'bold' },
    b = { fg = colors.pink, bg = config.opts.transparent and 'NONE' or colors.bg2 },
    c = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg },
}

return vscode
