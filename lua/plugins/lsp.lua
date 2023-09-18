require('neodev').setup({
    library = {
        enabled = true, 
        runtime = true, 
        types = true, 
        plugins = true,    
    },
    setup_jsonls = true, 
    override = function(root_dir, options) end,
    lspconfig = true,
    pathStrict = true,
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local lspconfig = require('lspconfig')
lspconfig.tsserver.setup {
    settings = {
        typescript = {
            completion = {
                callSnippet = "Replace"
            }
        },
        javascript = {
            completion = {
                callSnippet = "Replace"
            }
        }
    }
}
lspconfig.cssls.setup {
	capabilities = capabilities
}

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)
--vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
--vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
--vim.keymap.set('n', '<leader>ld', vim.diagnostic.setloclist)


