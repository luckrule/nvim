return {
  'numToStr/Comment.nvim',
  event = 'VeryLazy',
  opts = {
    pre_hook = function()
      require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()
    end,
  },
  config = function(_, opts)
    require('Comment').setup(opts)
  end,
}