return {
  'L3MON4D3/LuaSnip',
  event = 'InsertEnter',
  dependencies = {
    'rafamadriz/friendly-snippets',
  },
  build = 'make install_jsregexp',
  opts = {
    history = true,
    delete_check_events = 'TextChanged',
  },
  config = function()
    require('luasnip.loaders.from_lua').lazy_load()
    require('luasnip.loaders.from_vscode').lazy_load()
    require('luasnip.loaders.from_snipmate').lazy_load()
  end,
}
