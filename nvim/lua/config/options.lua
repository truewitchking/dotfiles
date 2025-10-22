local o = vim.opt
local g = vim.g

g.mapleader = ' '
g.maplocalleader = '\\'

o.number = true
o.relativenumber = true
o.signcolumn = 'yes'

o.mouse = ''
o.clipboard = 'unnamedplus'
o.virtualedit = 'block'

o.undofile = true
o.swapfile = false
o.backup = false
o.writebackup = false

o.ignorecase = true
o.smartcase = true
o.wrap = true

o.updatetime = 250
o.timeoutlen = 500
o.list = true

o.breakindent = true
o.autoindent = true
o.expandtab = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4

o.guicursor = 'a:block'
o.cursorline = true
o.winborder = 'bold'
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
o.splitright = true
o.splitbelow = true
o.scrolloff = 10
o.inccommand = 'nosplit'
o.showmode = true
o.cmdheight = 0
o.termguicolors = true
