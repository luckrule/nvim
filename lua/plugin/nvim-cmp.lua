return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-nvim-lsp-document-symbol',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'saadparwaiz1/cmp_luasnip',
  },
  opts = function()
    local cmp = require('cmp')
    local luasnip = require('luasnip')

    return {
      completion = { completeopt = 'menu,menuone,noinsert' },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, {
          'i',
          's',
        }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, {
          'i',
          's',
        }),
      }),
      sources = {
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'nvim_lsp_signature_help' },
        { name = 'luasnip' },
      },
    }
  end,
  config = function(_, opts)
    local cmp = require('cmp')
    cmp.setup(opts)
    cmp.setup.cmdline({
      '/',
      '?',
    }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources(
        { { name = 'nvim_lsp_document_symbol' } },
        { { name = 'buffer' } }
      ),
    })

    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'path' },
        { name = 'cmdline' },
      },
    })
  end,
}
