return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			local ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"python",
				"javascript",
				"typescript",
				"tsx",
			}
			local treesitter = require("nvim-treesitter")
			treesitter.setup()
			treesitter.install(ensure_installed)
		end,
	},
}
