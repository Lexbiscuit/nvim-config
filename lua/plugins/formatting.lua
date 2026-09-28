return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters = {
				stylua = {
					prepend_args = { "--indent-width", "4", "--indent-type", "Tabs" },
				},
			},
			formatters_by_ft = {
				c = { "clang_format" },
				cpp = { "clang_format" },
				go = { "gofumpt" },
				typescriptreact = { "eslint-lsp" },
				typescript = { "eslint-lsp" },
				javascript = { "eslint-lsp" },
				javascriptreact = { "eslint-lsp" },
				json = { "prettier" },
			},
		},
	},
}
