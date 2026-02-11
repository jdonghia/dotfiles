return {
  'mbbill/undotree',
  keys = {
    { '<leader>u', '<cmd>UndotreeToggle<cr>', mode = 'n' },
  },
  config = function()
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.g.undotree_WindowLayout = 3
  end,
}
