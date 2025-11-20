return {
  'mbbill/undotree',
  keys = {
    { '<leader>uu', '<cmd>UndotreeToggle<cr>', mode = 'n' },
  },
  config = function()
    vim.g.undotree_SetFocusWhenToggle = 1
  end,
}
