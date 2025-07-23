return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    build = 'make tiktoken',
    keys = {
      { '<leader>cp', '<cmd>CopilotChatToggle<CR>', mode = 'n' },
    },
    config = function()
      require('CopilotChat').setup {}
    end,
  },
  {
    'github/copilot.vim',
    config = function()
      vim.cmd 'Copilot disable'
    end,
  },
}
