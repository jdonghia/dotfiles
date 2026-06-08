return {
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("monokai-pro").setup()
      -- vim.cmd.colorscheme("monokai-pro-classic")
      vim.cmd.colorscheme("monokai-pro")
    end,
  },
  -- {
  --   "jdonghia/one-for-all.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function(_, opts)
  --     require("one-for-all").setup(opts)
  --     vim.cmd.colorscheme("one-for-all")
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
  --           vim.o.background = "light"
  --         elseif mode == "dark" then
  --           vim.o.background = "dark"
  --         end
  --         -- end
  --       end,
  --     })
  --   end,
  -- },
}
