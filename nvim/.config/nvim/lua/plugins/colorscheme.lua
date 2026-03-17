return {
  {
    'loctvl842/monokai-pro.nvim',
    config = function()
      require('monokai-pro').setup {
        -- transparent_background = true,
      }

      local obsidian_dir = vim.fn.expand '~/notes'
      local cwd = vim.fn.getcwd()

      if cwd:sub(1, #obsidian_dir) == obsidian_dir then
        vim.cmd.colorscheme 'dayfox'
      else
        vim.cmd.colorscheme 'monokai-pro-classic'
      end
    end,
  },

  {
    'EdenEast/nightfox.nvim',
    lazy = false,
    priority = 1000,
  },
}
