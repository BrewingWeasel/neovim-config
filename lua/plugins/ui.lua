return {
	-- colorscheme
	{
		"ray-x/aurora",
		-- config = function()
		-- 	vim.cmd.colorscheme("aurora")
		-- end,
	},
	{
		"Yazeed1s/oh-lucy.nvim",
		config = function()
			vim.cmd.colorscheme("oh-lucy")
		end,
	},
	{ "rose-pine/neovim", name = "rose-pine" },
	-- {
	-- 	"eldritch-theme/eldritch.nvim",
	-- },
	-- {
	-- 	"Everblush/nvim",
	-- 	name = "everblush",
	-- },
	-- {
	-- 	"embark-theme/vim",
	-- 	name = "embark",
	-- },
	-- {
	-- 	"shaunsingh/moonlight.nvim",
	-- },
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 250
		end,
		opts = {},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
		lazy = false,
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
}
