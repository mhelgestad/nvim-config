return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		local toggleterm = require("toggleterm")
		toggleterm.setup({
			direction = "float",
		})
		local keymap = vim.keymap
		keymap.set("n", "<C-/>", function()
			toggleterm.toggle()
		end, { desc = "Toggle Terminal" })
	end,
}
