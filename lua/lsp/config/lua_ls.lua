return {
  cmd = {
    'lua-language-server',
    '--locale=zh-cn',
  },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { 'vim' },
        disable = { 'lowercase-global' },
      },
      workspace = {
        library = {
          vim.fn.expand('$VIMRUNTIME'),
          '${3rd}/busted/library',
          '${3rd}/luassert/library',
        },
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
