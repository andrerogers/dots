return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{

		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"bashls",
					"jsonls",
					"cmake",
					"clangd",
					"quick_lint_js",
					"eslint",
					"tsserver",
					"glint",
					"gopls",
					"marksman",
					"pylsp",
					"sqls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.bashls.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.cmake.setup({})
			lspconfig.clangd.setup({})
			lspconfig.quick_lint_js.setup({})
			lspconfig.eslint.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.gopls.setup({
				settings = {
					gopls = {
						completeUnimported = true,
						usePlaceholders = true,
						analyses = {
							unusedparams = true,
						},
					},
				},
			})
			lspconfig.glint.setup({})
			lspconfig.marksman.setup({})
			lspconfig.pylsp.setup({})
			lspconfig.sqls.setup({})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
