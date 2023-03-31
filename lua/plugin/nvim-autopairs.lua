return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  opts = {
    disable_filetype = {
      'vim',
      'TelescopePrompt',
    },
  },
  config = function(_, opts)
    local cmp = require('cmp')
    local autopairs = require('nvim-autopairs')
    local rule = require('nvim-autopairs.rule')
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')

    autopairs.setup(opts)

    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

    autopairs.add_rules({
      rule('%(.*%)%s*%=>$', ' {}', {
          'typescript',
          'javascript',
        })
        :use_regex(true)
        :set_end_pair_length(1),
      rule('<', '>', 'html'),
      rule('（', '）'):set_end_pair_length(1),
      rule('「', '」'):set_end_pair_length(1),
      rule('【', '】'):set_end_pair_length(1),
      rule('《', '》'):set_end_pair_length(1),
    })
  end,
}
