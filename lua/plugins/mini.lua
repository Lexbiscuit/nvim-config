return {
	{
		"nvim-mini/mini.nvim",
		version = false,
		config = function()
			-- Only initialize the modules you want
			require("mini.surround").setup({})
			require("mini.animate").setup({
				-- Disable only the scroll animation to fix tmux lag
				scroll = {
					enable = false,
				},
				-- You can keep cursor, window, and resize animations enabled
				cursor = { enable = true },
				window = { enable = true },
				resize = { enable = true },
			})
		end,
	},
}
