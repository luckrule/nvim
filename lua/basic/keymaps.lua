local defaultOpts = {
  noremap = true,
  silent = true,
}

function keymap(mode, to, from, opts)
  vim.keymap.set(mode, to, from, opts or defaultOpts)
end

-- base
keymap('i', 'kk', '<esc>')
keymap('n', 'Q', '<cmd>q<cr>')
keymap('n', 'U', '<c-r>')
keymap('n', ';', '<cmd>')
keymap('n', '<leader>nh', ':nohlsearch<cr>')
keymap('n', '<leader><left>', ':bNext<cr>')
keymap('n', '<leader><right>', ':bnext<cr>')
keymap('n', '<leader>tn', ':tabnew ', {})
keymap('n', '<leader>t<left>', ':tabNext<cr>')
keymap('n', '<leader>t<right>', ':tabnext<cr>')

-- lsp
keymap('n', '<leader>e', vim.diagnostic.open_float)
keymap('n', '<leader>q', vim.diagnostic.setloclist)
keymap('n', '<leader><up>', vim.diagnostic.goto_prev)
keymap('n', '<leader><down>', vim.diagnostic.goto_next)
keymap('n', 'gD', vim.lsp.buf.declaration)
keymap('n', 'gd', vim.lsp.buf.definition)
keymap('n', 'K', function()
  local cw = vim.fn.expand('<cword>')
  if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
    vim.api.nvim_command('h ' .. cw)
  elseif vim.lsp.buf.server_ready() then
    vim.lsp.buf.hover()
  else
    vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
  end
end)
keymap('n', 'gi', vim.lsp.buf.implementation)
keymap('n', '<c-k>', vim.lsp.buf.signature_help)
keymap('n', '<leader>wa', vim.lsp.buf.add_workspace_folder)
keymap('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder)
keymap('n', '<leader>wl', function()
  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end)
keymap('n', '<leader>D', vim.lsp.buf.type_definition)
keymap('n', '<leader>rn', vim.lsp.buf.rename)
keymap('n', '<leader>ca', vim.lsp.buf.code_action)
keymap('n', 'gr', vim.lsp.buf.references)
keymap('n', '<leader>f', function()
  vim.lsp.buf.format({ async = true })
end)

-- telescope
local builtin = require('telescope.builtin')
keymap('n', '<leader>ff', builtin.find_files)
keymap('n', '<leader>fg', builtin.live_grep)
keymap('n', '<leader>fb', builtin.buffers)
keymap('n', '<leader>fh', builtin.help_tags)
keymap('n', '<leader>fch', builtin.command_history)
keymap('n', '<leader>fsh', builtin.search_history)
