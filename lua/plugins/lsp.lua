return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {"lua_ls", "rust_analyser", "gopls", "pyright"},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		{
			"neovim/nvim-lspconfig",
			config = function()

			end,
		}
	},
	config = function()
		require("mason-lspconfig").setup({

		})
	end
}
