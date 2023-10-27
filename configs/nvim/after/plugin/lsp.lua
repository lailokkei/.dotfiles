local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer',
    'lua_ls',
})

lsp.format_on_save({
    format_opts = {
        async = false,
        timeout_ms = 10000,
    },
    servers = {
        ['lua_ls'] = { 'lua' },
    }
})

lsp.setup()

local cmp = require('cmp')

cmp.setup({
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = false, behavior = cmp.ConfirmBehavior.Replace }),
    }
})

-- local lspconfig = require('lspconfig')
-- lspconfig.rust_analyzer.setup {
--     on_attach = function(client, bufnr)
--         print("rust_analyzer")
--     end,
--     setting = {
--         ['rust_analyzer'] = {
--             diagnostics = {
--             },
--             definition = {
--                 linkSupport = false
--             }
--             -- capabilities = {
--             --     textDocument = {
--             --         diagnostic = {
--             --             dynamicRegistration = true
--             --         }
--             --     }
--             -- }
--         }
--     }
-- }
