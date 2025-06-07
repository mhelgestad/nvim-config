return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "github/copilot.vim" },
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken",
		opts = {
			-- See Configuration section for options
		},
		keys = {
			{ "<leader>CC", "<cmd>CopilotChatToggle<cr>", desc = "Toggle CopilotChat" },
			{ "<leader>CR", "<cmd>CopilotChatReset<cr>", desc = "Reset CopilotChat" },
		},
	},
}
