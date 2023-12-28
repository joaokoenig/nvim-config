return {
  "L3MON4D3/LuaSnip",
  'hrsh7th/nvim-cmp',
  version = "v2.*", 
  build = "make install_jsregexp",
  config = function ()
    require'cmp'.setup {
      snippet = {
        expand = function(args)
          require'luasnip'.lsp_expand(args.body)
        end
      },

      sources = {
        { name = 'luasnip', option = { show_autosnippets = true } },
        -- more sources
      },
    }
  end
} 
