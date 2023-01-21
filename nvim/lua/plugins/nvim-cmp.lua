return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',

  dependencies = {
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'saadparwaiz1/cmp_luasnip',
  },

  config = function()
    local cmp = require('cmp')
    local luasnip = require('luasnip')

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },

      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = {
          i = function(fallback)
            if cmp.visible() then
              cmp.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true })
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end,
        },

        ['<C-j>'] = {
          i = function(fallback)
            if cmp.visible() then
              cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
            else
              fallback()
            end
          end
        },

        ['<C-k>'] = {
          i = function(fallback)
            if cmp.visible() then
              cmp.select_previous_item({ behavior = cmp.SelectBehavior.Insert })
            else
              fallback()
            end
          end
        },
      }),

      sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
      },
    })
  end

}
