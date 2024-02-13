local lazypath = vim.fn.stdpath("data") .. "/customconfig/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"ray-x/aurora",
		config = function()
			vim.cmd.colorscheme("aurora")
		end,
	},
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
		"numToStr/Comment.nvim",
		opts = {},
		lazy = false,
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
		lazy = false,
	},
	{
		"williamboman/mason.nvim",
		config = true,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"stylua",
			},
		},
		lazy = false,
	},
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				-- Customize or remove this keymap to your liking
				"<leader>f",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = "",
				desc = "Format buffer",
			},
		},
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
			},
			format_on_save = { timeout_ms = 500, lsp_fallback = true },
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		event = "VeryLazy",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>ff", builtin.git_files, {}) -- TODO: descriptions
			vim.keymap.set("n", "<leader>fF", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "rust", "lua", "python", "c", "vimdoc", "query", "elixir", "gleam" },
				auto_install = true,
				highlight = {
					enable = true,
				},
			})
		end,
	},
})
