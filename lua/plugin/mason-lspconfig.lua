return {
  'williamboman/mason-lspconfig.nvim',
  event = {
    'BufReadPre',
    'BufNewFile',
  },
  keys = {
    {
      '<LEADER>cd',
      vim.diagnostic.open_float,
      desc = '当前行诊断信息',
    },
    {
      '<LEADER>cl',
      '<CMD>LspInfo<CR>',
      desc = 'lsp info',
    },
    {
      '<LEADER>cf',
      vim.lsp.buf.format,
      desc = '格式化文件',
    },
    {
      '<LEADER>cf',
      vim.lsp.buf.format,
      desc = '范围格式化',
      mode = 'v',
    },
    {
      '<LEADER>cr',
      vim.lsp.buf.rename,
      desc = '修改名称',
    },
    {
      '<LEADER>ca',
      vim.lsp.buf.code_action,
      desc = '代码操作',
      mode = {
        'n',
        'v',
      },
    },
    {
      'gd',
      '<CMD>Telescope lsp_definitions<CR>',
      desc = '转到定义',
    },
    {
      'gr',
      '<CMD>Telescope lsp_references<CR>',
      desc = '转到引用',
    },
    {
      'gD',
      vim.lsp.buf.declaration,
      desc = '转到声明',
    },
    {
      'gI',
      '<CMD>Telescope lsp_implementations<CR>',
      desc = '转到实现',
    },
    {
      'gt',
      '<CMD>Telescope lsp_type_definitions<CR>',
      desc = '转到类型定义',
    },
    {
      'K',
      vim.lsp.buf.hover,
      desc = '悬停',
    },
    {
      'gK',
      vim.lsp.buf.signature_help,
      desc = '函数帮助',
    },
    {
      '<C-k>',
      vim.lsp.buf.signature_help,
      mode = 'i',
      desc = '函数帮助',
    },
    {
      ']d',
      vim.diagnostic.goto_next,
      desc = '下一个诊断',
    },
    {
      '[d',
      vim.diagnostic.goto_prev,
      desc = '上一个诊断',
    },
    {
      ']e',
      function()
        vim.diagnostic.goto_next({
          severity = vim.diagnostic.severity.ERROR or nil,
        })
      end,
      desc = '下一个错误',
    },
    {
      '[e',
      function()
        vim.diagnostic.goto_prev({
          severity = vim.diagnostic.severity.ERROR or nil,
        })
      end,
      desc = '上一个错误',
    },
    {
      ']w',
      function()
        vim.diagnostic.goto_next({
          severity = vim.diagnostic.severity.WARN or nil,
        })
      end,
      desc = '下一个警告',
    },
    {
      '[w',
      function()
        vim.diagnostic.goto_prev({
          severity = vim.diagnostic.severity.WARN or nil,
        })
      end,
      desc = '上一个警告',
    },
  },
  dependencies = {
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'b0o/schemastore.nvim',
    'folke/neodev.nvim',
  },
  opts = {
    ensure_installed = {
      'volar',
      'lua_ls',
      'jsonls',
      'yamlls',
      'bashls',
      'tsserver',
    },
    automatic_installation = true,
  },
  config = function(_, opts)
    local servers = {
      bashls = { GLOB_PATTERN = '*@(.sh|.zsh|.inc|.bash|.command)' },
      jsonls = {
        settings = {
          json = {
            schemas = require('schemastore').json.schemas(),
            validate = { enable = true },
          },
        },
      },
      lua_ls = {
        cmd = {
          'lua-language-server',
          '--locale=zh-cn',
        },
      },
      yamlls = {
        settings = {
          yaml = { schemas = require('schemastore').yaml.schemas() },
        },
      },
      tsserver = {
        init_options = {
          locale = 'zh-CN',
        },
      },
    }

    require('mason-lspconfig').setup(opts)
    require('mason-lspconfig').setup_handlers({
      function(serverName)
        require('lspconfig')[serverName].setup(servers[serverName] or {})
      end,
    })
  end,
}
