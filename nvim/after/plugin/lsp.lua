local lsp = require("lsp-zero").preset({})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })
end)

lsp.ensure_installed({
	"lua_ls",
})

lsp.setup()

local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

-- don't add this function in the `on_attach` callback.
-- `format_on_save` should run only once, before the language servers are active.
lsp_zero.format_on_save({
	format_opts = {
		async = false,
		timeout_ms = 10000,
	},
	servers = {},
})

local cmp = require("cmp")

cmp.setup({
	mapping = {
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	},
	window = {
		completion = cmp.config.window.bordered(),
	},
})

require("lspconfig").clangd.setup({
	on_attach = on_attach,
	cmd = {
		"clangd",
		"--offset-encoding=utf-16",
		"--query-driver=C:\\Users\\User\\scoop\\apps\\gcc\\current\\bin\\g++.exe",
	},
})
