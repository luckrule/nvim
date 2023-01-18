require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'lua',
    'bash',
    'json',
    'yaml',
    'javascript',
    'typescript',
  },
  sync_install = true,
  auto_install = true,
  highlight = {
    enable = true,
  },
})
