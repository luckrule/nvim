return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
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
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = '<LEADER><CR>',
        node_incremental = '<CR>',
        node_decremental = '<BS>',
        scope_incremental = '<TAB>',
      },
    },
  },
}
