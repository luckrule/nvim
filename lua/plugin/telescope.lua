return {
  'nvim-telescope/telescope.nvim',
  cmd = 'Telescope',
  keys = {
    {
      '<leader>fb',
      '<cmd>Telescope buffers<cr>',
      desc = '缓冲区',
    },
    {
      '<leader>ff',
      '<cmd>Telescope find_files<cr>',
      desc = '查找文件',
    },
    {
      '<leader>fr',
      '<cmd>Telescope oldfiles<cr>',
      desc = '最近文件',
    },
    {
      '<leader>gc',
      '<cmd>Telescope git_commits<CR>',
      desc = '提交记录',
    },
    {
      '<leader>gs',
      '<cmd>Telescope git_status<CR>',
      desc = '状态',
    },
    {
      '<leader>sa',
      '<cmd>Telescope autocommands<cr>',
      desc = '自动命令',
    },
    {
      '<leader>sb',
      '<cmd>Telescope current_buffer_fuzzy_find<cr>',
      desc = '缓冲区',
    },
    {
      '<leader>sc',
      '<cmd>Telescope command_history<cr>',
      desc = '命令历史',
    },
    {
      '<leader>sC',
      '<cmd>Telescope commands<cr>',
      desc = '命令',
    },
    {
      '<leader>sd',
      '<cmd>Telescope diagnostics<cr>',
      desc = '诊断',
    },
    {
      '<leader>sg',
      '<cmd>Telescope live_grep<cr>',
      desc = '字符',
    },
    {
      '<leader>sh',
      '<cmd>Telescope help_tags<cr>',
      desc = '帮助',
    },
    {
      '<leader>sH',
      '<cmd>Telescope highlights<cr>',
      desc = '高亮',
    },
    {
      '<leader>sk',
      '<cmd>Telescope keymaps<cr>',
      desc = '键映射',
    },
    {
      '<leader>sM',
      '<cmd>Telescope man_pages<cr>',
      desc = '手册',
    },
    {
      '<leader>sm',
      '<cmd>Telescope marks<cr>',
      desc = '标记',
    },
    {
      '<leader>so',
      '<cmd>Telescope vim_options<cr>',
      desc = '设置',
    },
    {
      '<leader>sR',
      '<cmd>Telescope resume<cr>',
      desc = '上次打开的缓冲区',
    },
    {
      '<leader>sw',
      '<cmd>Telescope grep_string<cr>',
      desc = '当前单词',
    },
  },
  opts = function()
    local actions = require('telescope.actions')
    local trouble = require('trouble.providers.telescope')

    return {
      defaults = {
        mappings = {
          i = {
            ['<C-t>'] = trouble.open_with_trouble,
            ['<A-t>'] = trouble.open_selected_with_trouble,
            ['<C-Down>'] = actions.cycle_history_next,
            ['<C-Up>'] = actions.cycle_history_prev,
            ['<C-f>'] = actions.preview_scrolling_down,
            ['<C-b>'] = actions.preview_scrolling_up,
            ['<ESC>'] = actions.close,
          },
        },
      },
      pickers = {
        find_files = { theme = 'dropdown' },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = 'smart_case',
        },
      },
    }
  end,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    },
  },
}
