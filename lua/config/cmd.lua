vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = vim.fn.stdpath('config') .. "/*",
	callback = function ()
		vim.cmd("restart")	
	end
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
	local opts = { buffer = event.buf, silent = true }

	-- Navigation
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

	-- Actions
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

	-- Diagnostics
	vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
	vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
	vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
	vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)

	-- Formatting
	vim.keymap.set("n", "<leader>f", function()
	  vim.lsp.buf.format({ async = true })
	end, opts)

	vim.keymap.set("v", "<leader>f", function()
	vim.lsp.buf.format({ async = true })
	end, opts)
	end,
	})
