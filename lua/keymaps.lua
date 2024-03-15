vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "[y]ank to the system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "[p]aste from the system clipboard" })

vim.keymap.set("n", "<leader>nw", function()
	vim.cmd("set wrap!")
end, {
	desc = "[n]eovim: toggle [w]rap",
})

vim.keymap.set("n", "<leader>nl", function()
	vim.cmd("Lazy")
end, { desc = "[n]eovim: open [l]azy" })

vim.keymap.set("n", "<leader>nm", function()
	vim.cmd("Mason")
end, { desc = "[n]eovim: open [m]ason" })
