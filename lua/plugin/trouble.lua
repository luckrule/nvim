return {
  'folke/trouble.nvim',
  cmd = {
    'TroubleToggle',
    'Trouble',
  },
  keys = {
    {
      '<leader>xx',
      '<cmd>TroubleToggle document_diagnostics<cr>',
      desc = '文件诊断',
    },
    {
      '<leader>xX',
      '<cmd>TroubleToggle workspace_diagnostics<cr>',
      desc = '工作区诊断',
    },
    {
      '<leader>xL',
      '<cmd>TroubleToggle loclist<cr>',
      desc = '位置列表',
    },
    {
      '<leader>xQ',
      '<cmd>TroubleToggle quickfix<cr>',
      desc = '快速修复列表',
    },
  },
  opts = { use_diagnostic_signs = true },
}
