local opt = vim.opt
local global = vim.g

global.mapleader = ' '
global.maploptcalleader = '\\'

opt.number = true
opt.relativenumber = true
opt.signcolumn = 'yes'

opt.mouse = ''
opt.clipboard = 'unnamedplus'
opt.virtualedit = 'block'

opt.undofile = true
opt.swapfile = false
opt.backup = false
opt.writebackup = false

opt.ignorecase = true
opt.smartcase = true
opt.wrap = true

opt.updatetime = 250
opt.timeoutlen = 500
opt.list = true

opt.breakindent = true
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

opt.guicursor = 'a:block'
opt.cursorline = true
opt.winborder = 'bold'
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
opt.splitright = true
opt.splitbelow = true
opt.scrolloff = 10
opt.inccommand = 'split'
opt.showmode = false
opt.cmdheight = 1
opt.termguicolors = true
