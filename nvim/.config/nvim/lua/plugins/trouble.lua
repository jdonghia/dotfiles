return {
  'folke/trouble.nvim',
  config = function()
    require('trouble').setup {}
  end,
  cmd = 'Trouble',
  keys = {
    {
      '<leader>q',
      '<cmd>Trouble diagnostics toggle<cr>',
    },
  },
}
