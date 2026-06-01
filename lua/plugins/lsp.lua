return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				---@type vim.lsp.Config
				pyright = {
					root_markers = {
						"pyrightconfig.json",
						"pyproject.toml",
						"setup.py",
						"setup.cfg",
						"requirements.txt",
						"Pipfile",
						".git",
					},
				},
			},
		},
	},
}
