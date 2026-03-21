return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    lazy = false
  },
  {
    'cormacrelf/dark-notify',
    priority = 1000,
    lazy = false,
    config = function()
      local dn = require 'dark_notify'

      -- local obsidian_dir = vim.fn.expand '~/notes'

      dn.run {
        onchange = function(mode)
          -- local cwd = vim.fn.getcwd()

          -- if cwd:sub(1, #obsidian_dir) == obsidian_dir then
          --   if mode == 'light' then
          --     vim.cmd.colorscheme 'catppuccin-latte'
          --   elseif mode == 'dark' then
          --     vim.cmd.colorscheme 'catppuccin-frappe'
          --   end
          -- else
          if mode == 'light' then
            vim.cmd.colorscheme 'rose-pine-dawn'
          elseif mode == 'dark' then
            vim.cmd.colorscheme 'rose-pine-moon'
          end
          -- end
        end,
      }
    end,
  },
}
