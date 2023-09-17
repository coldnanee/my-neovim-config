local cmp = require 'cmp'

local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["UltiSnips#Anon"](args.body)
        end
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered()
    },
    mapping = cmp.mapping.preset.insert({
       ['<Down>'] = cmp.mapping.close(),
       ['<Up>'] = cmp.mapping.close(),
       --  ["<Tab>"] = cmp.mapping(function(fallback)
       --      if cmp.visible() then
       --          cmp.select_next_item()
       --      else 
       --          fallback()
       --      end
       --  end, {"i", "s"}),
       -- ["<S-Tab>"] = cmp.mapping(function(fallback)
       --    if cmp.visible() then
       --      cmp.select_prev_item()
       --    else
       --      fallback()
       --    end
       --  end, { "i", "s" }),
        ["<CR>"] = cmp.mapping.confirm({select = true}),
        ["<Tab>"] = cmp.mapping(
            function(fallback)
                cmp_ultisnips_mappings.jump_forwards(fallback)
            end,
            { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
        ),
        ["<S-Tab>"] = cmp.mapping(
          function(fallback)
            cmp_ultisnips_mappings.jump_backwards(fallback)
          end,
          { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
        ),
    }),
    sources = cmp.config.sources({
        { name = "ultisnips" },{name = 'nvim_lsp'}},
        {{name = 'buffer'}, {name = 'nvim_lsp_signature_help'}})
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['tsserver'].setup {capabilities = capabilities}
