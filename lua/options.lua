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

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- visual
vim.opt.scrolloff = 5
vim.opt.termguicolors = true

vim.g.mapleader = " "

vim.opt.undofile = true

vim.filetype.add({
	extension = { rasi = "rasi" },
	pattern = {
		[".*/waybar/config"] = "jsonc",
		[".*/mako/config"] = "dosini",
		[".*/kitty/*.conf"] = "bash",
		[".*/hypr/.*%.conf"] = "hyprlang",
	},
})

vim.opt.spelllang = { "en", "lt" }
