return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters = {
				stylua = {
					prepend_args = { "--indent-width", "4", "--indent-type", "Tabs" },
				},
			},
		},
	},
}
