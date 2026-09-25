return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local ts = require("nvim-treesitter")

		ts.setup({
			install_dir = vim.fn.stdpath('data') .. '/site'		
		})

		local parsers = {
			"bash",
			"sql",
			"go",
			"gomod",
			"javascript",
			"json",
			"lua",
			"markdown",
			"python",
			"rust",
			"tsx",
			"typescript",
			"vim",
			"vimdoc",
			"yaml",
		}

		ts.install(parsers)

		vim.api.nvim_create_autocmd('FileType', {
			pattern = parsers,
			callback = function()
				vim.treesitter.start()
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end
		})
	end
}
