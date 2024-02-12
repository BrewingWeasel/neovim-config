-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- splits
vim.opt.splitbelow = true
vim.opt.inccommand = "split" -- for searches show results in split

vim.opt.wrap = false

-- tabs to spaces
vim.opt.expandtab = true
local tabs_num = 3
vim.opt.tabstop = tabs_num
vim.opt.shiftwidth = tabs_num

vim.opt.virtualedit = "block"
vim.opt.ignorecase = true

-- visual
vim.opt.scrolloff = 5
vim.opt.termguicolors = true

vim.g.mapleader = " "
