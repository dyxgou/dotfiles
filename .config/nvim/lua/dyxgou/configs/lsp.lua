require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"rust_analyzer",
		"bashls",
		"ruff",
		"tsserver",
		"eslint",
		"tailwindcss",
	},
})

local on_attach = require("dyxgou.configs.on_attach").on_attach
local lsp = require("lspconfig")
local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

lsp.lua_ls.setup({
	on_attach = on_attach,
	capabilities = lsp_capabilities,
})

lsp.tsserver.setup({
	on_attach = on_attach,
	capabilities = lsp_capabilities,
})

lsp.tailwindcss.setup({
	on_attach = on_attach,
	capabilities = lsp_capabilities,
})

lsp.emmet_language_server.setup({
	ft = { "typescript", "javascript", "javascriptreact", "typescriptreact", "css" },
	on_attach = on_attach,
	capabilities = lsp_capabilities,
})

lsp.astro.setup({
	on_attach = on_attach,
	capabilities = lsp_capabilities,
})

lsp.pyright.setup({
	on_attach = on_attach,
	capabilities = lsp_capabilities,
})
