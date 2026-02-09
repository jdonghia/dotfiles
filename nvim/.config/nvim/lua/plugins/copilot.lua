return {
  'github/copilot.vim',
  config = function()
    vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
      silent = true,
    })

    vim.keymap.set('n', '<leader>ce', '<cmd>Copilot enable<CR>')
    vim.keymap.set('n', '<leader>cd', '<cmd>Copilot disable<CR>')

    vim.g.copilot_no_tab_map = true
    vim.g.copilot_enabled = false
  end,
}
