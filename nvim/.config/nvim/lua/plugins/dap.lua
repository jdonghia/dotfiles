return {
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'rcarriga/nvim-dap-ui',
      'nvim-neotest/nvim-nio',
    },
    config = function()
      local dap, dapui = require 'dap', require 'dapui'

      dapui.setup()

      vim.keymap.set('n', '<leader>do', dap.step_over, {})

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end

      vim.keymap.set('n', '<leader>dt', dap.toggle_breakpoint, {})
      vim.keymap.set('n', '<leader>dc', dap.continue, {})
      vim.keymap.set('n', '<leader>di', dap.step_into, {})
      vim.keymap.set('n', '<leader>do', dap.step_over, {})

      vim.keymap.set('n', '<leader>dd', dapui.toggle, {})

      require('dap').adapters['pwa-node'] = {
        type = 'server',
        host = 'localhost',
        port = '${port}',
        executable = {
          command = 'node',
          args = { vim.fn.expand '~/.local/share/nvim/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js', '${port}' },
        },
      }

      require('dap').configurations.javascript = {
        {
          type = 'pwa-node',
          request = 'launch',
          name = 'Launch file',
          program = '${file}',
          cwd = '${workspaceFolder}',
        },
      }
    end,
  },
}
