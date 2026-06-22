return {

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
    },
  },
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
  --           vim.cmd.colorscheme("catppuccin-latte")
  --         elseif mode == "dark" then
  --           vim.cmd.colorscheme("catppuccin-frappe")
  --         end
  --       end,
  --     })
  --   end,
  -- },
}
