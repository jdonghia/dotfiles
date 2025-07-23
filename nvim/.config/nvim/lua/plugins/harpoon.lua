return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    {
      '<leader>h',
      function()
        require('harpoon'):list():add()
      end,
      mode = 'n',
    },
    {
      '<C-e>',
      function()
        local harpoon = require 'harpoon'
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      mode = 'n',
    },
    {
      '<leader>1',
      function()
        require('harpoon'):list():select(1)
      end,
      mode = 'n',
    },
    {
      '<leader>2',
      function()
        require('harpoon'):list():select(2)
      end,
      mode = 'n',
    },
    {
      '<leader>3',
      function()
        require('harpoon'):list():select(3)
      end,
      mode = 'n',
    },
    {
      '<leader>4',
      function()
        require('harpoon'):list():select(4)
      end,
      mode = 'n',
    },
  },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()
  end,
}
