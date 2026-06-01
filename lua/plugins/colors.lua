return {
	{
		"shatur/neovim-ayu",
		config = function()
			require("ayu").setup({
				mirage = true,
				terminal = true,
				overrides = {},
			})
			vim.cmd("colorscheme ayu")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			theme = "ayu",
		},
	},
}
