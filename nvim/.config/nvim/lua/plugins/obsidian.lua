return {
  'obsidian-nvim/obsidian.nvim',
  version = '*', 
  ft = 'markdown',
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, 
    workspaces = {
      {
        name = 'personal',
        path = '~/obsidian',
      },
    },
    disable_frontmatter = true,
  },

  keys = {
    { 'gt', '<cmd>ObsidianTag<CR>', silent = true },
    {
      'gf',
      function()
        return require('obsidian').util.gf_passthrough()
      end,
      mode = 'n',
      noremap = false,
      expr = true,
      buffer = true,
      silent = true,
    },
    {
      '<leader>ti',
      function()
        return require('obsidian').util.toggle_checkbox()
      end,
      mode = 'n',
      buffer = true,
      silent = true,
    },
    {
      '<leader>odd',
      ":!mkdir -p ~/obsidian/.trash && mv '%:p' ~/obsidian/.trash<cr>:bd<cr>",
      mode = 'n',
      silent = true,
    },
    {
      '<leader>oo',
      function()
        -- Check if Obsidian is already running
        local is_running = vim.fn.system('pgrep -x Obsidian'):match('%d+')
        
        vim.cmd 'Obsidian open'
        
        -- Focus on Obsidian and apply fixed accordion vertical layout
        if is_running then
          vim.fn.system('open -a Obsidian')
        end
        vim.fn.system('aerospace layout accordion')
        vim.fn.system('aerospace layout vertical')
      end,
      mode = 'n',
      silent = true,
      desc = 'Open in Obsidian app with accordion layout',
    },
  },
}
