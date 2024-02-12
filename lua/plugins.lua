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
      opts = {}
   },
   {
      "folke/todo-comments.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      opts = {}
   },
   {
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
      event = "VeryLazy",
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
         local builtin = require('telescope.builtin') 

         vim.keymap.set('n', '<leader>ff', builtin.git_files, {}) -- TODO: descriptions
         vim.keymap.set('n', '<leader>fF', builtin.find_files, {})
         vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
         vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
         vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
      end
   },
   {
     "nvim-treesitter/nvim-treesitter",
     config = function() 
        require("nvim-treesitter.configs").setup({
           ensure_installed = {"rust", "lua", "python", "c", "vimdoc", "query", "elixir", "gleam"},
           auto_install = true,
           highlight = {
              enable = true,
           },
--           incremental_selection = {
--              enable = true,
--              keymaps = {
--                 init_selection = "gnn", -- set to `false` to disable one of the mappings
--                 node_incremental = "grn",
--                 scope_incremental = "grc",
--                 node_decremental = "grm",
--              },
--           },
        })
     end
   }
})
