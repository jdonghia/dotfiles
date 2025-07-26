return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    'MunifTanjim/nui.nvim',
    {
      'rcarriga/nvim-notify',
      config = function()
        require('notify').setup {
          background_colour = '#000000',
          timeout = 1500,
        }
      end,
    },
  },
  opts = {
    cmdline = {
      enable = true,
    },
    messages = {
      enable = true,
    },
  },
}
