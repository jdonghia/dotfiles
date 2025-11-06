return {
  {
    'numToStr/Comment.nvim',
    dependencies = {
      {
        'JoosepAlviste/nvim-ts-context-commentstring',
      },
    },
    config = function()
      -- needed to format jsx and tsx components correctly
      require('Comment').setup {
        pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
      }

      -- Disable comment next line
      vim.cmd [[autocmd FileType * set formatoptions-=ro]]
    end,
  },
}
