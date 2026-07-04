return {

  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  -- },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "catppuccin-frappe",
  --   },
  -- },
  -- {
  --   "projekt0n/github-nvim-theme",
  --   name = "github-theme",
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     require("github-theme").setup({
  --       -- ...
  --     })
  --
  --     vim.cmd("colorscheme github_light_default")
  --   end,
  -- },
  {
    "rose-pine/neovim",
    config = function()
      vim.cmd("colorscheme rose-pine")
    end,
    name = "rose-pine",
  },
  -- {
  --   "Mofiqul/vscode.nvim",
  --   config = function()
  --     vim.cmd.colorscheme("vscode")
  --   end,
  -- },
  -- {
  --   "cormacrelf/dark-notify",
  --   priority = 1000,
  --   lazy = false,
  --   config = function()
  --     local dn = require("dark_notify")
  --
  --     dn.run({
  --       onchange = function(mode)
  --         if mode == "light" then
  --           vim.cmd("colorscheme rose-pine-dawn")
  --         elseif mode == "dark" then
  --           vim.cmd("colorscheme rose-pine")
  --         end
  --       end,
  --     })
  --   end,
  -- },
}
