return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"leoluz/nvim-dap-go",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dap, dapui = require("dap"), require("dapui")

		require("dapui").setup()
		require("dap-go").setup()

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<Leader>pt", dapui.toggle, { desc = "Toggle Dap UI" })
		vim.keymap.set("n", "<Leader>pb", dap.toggle_breakpoint, { desc = "Breakpoint" })
		vim.keymap.set("n", "<Leader>pc", dap.continue, { desc = "Continue" })
		vim.keymap.set("n", "<Leader>pr", ":lua require('dapui').open({reset = true})<CR>", { desc = "Reset Dap" })

		vim.fn.sign_define(
			"DapBreakpoint",
			{ text = "⏺", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
		)
	end,
}
