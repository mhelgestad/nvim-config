vim.lsp.enable({ "gopls", "lua_ls", })

vim.diagnostic.config({
	virtual_text = true,
	-- virtual_lines = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = true,
		signs = {
			text = {
				[vim.diagnostic.ERROR] = " ",
				[vim.diagnostic.WARN] = " ",
				[vim.diagnostic.INFO] = "󰠠 ",
				[vim.diagnostic.HINT] = " ",
			},
			numhl = {
				[vim.diagnostic.severity.ERROR] = "ErrorMsg",
				[vim.diagnostic.severity.WARN] = "WarningMsg",
			},
		},
	},
})
