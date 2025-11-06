return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'leoluz/nvim-dap-go',
    'rcarriga/nvim-dap-ui',
    'theHamsta/nvim-dap-virtual-text',
    'nvim-neotest/nvim-nio',
    'williamboman/mason.nvim',
  },
  keys = {
    {
      '<space>db',
      function()
        require('dap').toggle_breakpoint()
      end,
      mode = 'n',
    },
    {
      '<leader>dap',
      function()
        require('dapui').toggle()
      end,
      mode = 'n',
    },
    {
      '<leader>dc',
      function()
        require('dap').continue()
      end,
      mode = 'n',
    },
    {
      '<leader>di',
      function()
        require('dap').step_into()
      end,
      mode = 'n',
    },
    {
      '<leader>do',
      function()
        require('dap').step_over()
      end,
      mode = 'n',
    },
    {
      '<leader>dO',
      function()
        require('dap').step_out()
      end,
      mode = 'n',
    },
    {
      '<leader>ds',
      function()
        require('dap').step_back()
      end,
      mode = 'n',
    },
    {
      '<leader>dr',
      function()
        require('dap').restart()
      end,
      mode = 'n',
    },
  },
  config = function()
    local dap = require 'dap'
    local ui = require 'dapui'

    require('dapui').setup()
    require('dap-go').setup()

    require('nvim-dap-virtual-text').setup {}

    dap.adapters.go = {
      type = 'server',
      port = '${port}',
      executable = {
        command = 'dlv',
        args = { 'dap', '-l', '127.0.0.1:${port}' },
      },
    }

    dap.listeners.before.attach.dapui_config = function()
      ui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      ui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      ui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      ui.close()
    end
  end,
}
