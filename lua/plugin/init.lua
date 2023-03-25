local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')
    .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      'git',
      'clone',
      '--depth',
      '1',
      'https://github.com/wbthomason/packer.nvim',
      install_path,
    })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup({
  function(use)
    use('wbthomason/packer.nvim')
    use('nvim-lua/plenary.nvim')
    use({
      'ellisonleao/gruvbox.nvim',
      config = [[require('plugin.config.gruvbox')]],
    })
    use({
      'nvim-treesitter/nvim-treesitter',
      config = [[require('plugin.config.treesitter')]],
    })
    use({
      'windwp/nvim-autopairs',
      config = [[require('plugin.config.autopairs')]],
    })
    use({
      'ggandor/leap.nvim',
      config = [[require('plugin.config.leap')]],
    })
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    use('neovim/nvim-lspconfig')
    use('jose-elias-alvarez/null-ls.nvim')
    use('b0o/schemastore.nvim')
    use({
      'L3MON4D3/LuaSnip',
      requires = 'rafamadriz/friendly-snippets',
    })
    use({
      'hrsh7th/nvim-cmp',
      requires = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-nvim-lsp-document-symbol',
        'hrsh7th/cmp-nvim-lsp-signature-help',
        'saadparwaiz1/cmp_luasnip',
      },
    })
    use('mfussenegger/nvim-dap')
    use({
      'numToStr/Comment.nvim',
      config = [[require('plugin.config.comment')]],
    })
    use('nvim-telescope/telescope.nvim')

    if packer_bootstrap then
      require('packer').sync()
    end
  end,
  config = {
    display = {
      open_fn = require('packer.util').float,
    },
  },
})
