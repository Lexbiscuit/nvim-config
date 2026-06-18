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
				pyrefly = {},
				sonarlint_language_server = {},
				clangd = {
					cmd = {
						"/opt/homebrew/opt/llvm/bin/clangd",
						"--background-index", -- Index code patterns in background
						"--clang-tidy", -- Enable linter diagnostics
						"--completion-style=detailed",
					},
				},
				gopls = {},
				vtsls = {},
			},
		},
	},
	{
		"kevinhwang91/nvim-ufo",
		dependencies = { "kevinhwang91/promise-async" },
		config = function()
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			local lspconfig = require("lspconfig")

			capabilities.textDocument.foldingRange = {
				dynamicRegistration = false,
				lineFoldingOnly = true,
			}
			local language_servers = vim.lsp.get_clients() -- or list servers manually like {'gopls', 'clangd'}
			for _, ls in ipairs(language_servers) do
				lspconfig[ls].setup({
					capabilities = capabilities,
					-- you can add other fields for setting up lsp server in this table
				})
			end
			require("ufo").setup()
		end,
	},
	{
		"iamkarasik/sonarqube.nvim",
		config = function()
			local extension_path = vim.fn.stdpath("data") .. "/mason/packages/sonarlint-language-server/extension"

			require("sonarqube").setup({
				lsp = {
					cmd = {
						vim.fn.exepath("java"),
						"-jar",
						extension_path .. "/server/sonarlint-ls.jar",
						"-stdio",
						"-analyzers",
						extension_path .. "/analyzers/sonargo.jar",
						extension_path .. "/analyzers/sonarhtml.jar",

						extension_path .. "/analyzers/sonariac.jar",
						extension_path .. "/analyzers/sonarjava.jar",
						extension_path .. "/analyzers/sonarjavasymbolicexecution.jar",
						extension_path .. "/analyzers/sonarjs.jar",
						extension_path .. "/analyzers/sonarphp.jar",
						extension_path .. "/analyzers/sonarpython.jar",
						extension_path .. "/analyzers/sonartext.jar",
						extension_path .. "/analyzers/sonarxml.jar",
					},
				},
			})
		end,
	},
}
