-- return {
--   "Mofiqul/vscode.nvim",
--   config = function()
--     vim.cmd.colorscheme("vscode")
--   end,
-- }
--
-- return {
--   "maxmx03/solarized.nvim",
--   lazy = false,
--   priority = 1000,
--   ---@type solarized.config
--   opts = {},
--   config = function(_, opts)
--     vim.o.termguicolors = true
--     vim.o.background = "dark"
--     require("solarized").setup(opts)
--     vim.cmd.colorscheme("solarized")
--   end,
-- }

-- return
-- {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   priority = 1000,
--   lazy = false,
--   config = function()
--     -- if vim.o.background == "light" then
--     --   vim.cmd.colorscheme("rose-pine-dawn")
--     -- else
--     --   vim.cmd.colorscheme("rose-pine-moon")
--     -- end
--     vim.cmd.colorscheme("rose-pine-moon")
--   end,
-- },

return {
  {
    "maxmx03/solarized.nvim",
    lazy = false,
    priority = 1000,
    ---@type solarized.config
    opts = {},
    config = function(_, opts)
      vim.o.termguicolors = true
      require("solarized").setup(opts)
      vim.cmd.colorscheme("solarized")
    end,
  },

  {
    "cormacrelf/dark-notify",
    priority = 1000,
    lazy = false,
    config = function()
      local dn = require("dark_notify")

      dn.run({
        onchange = function(mode)
          if mode == "light" then
            vim.o.background = "light"
          elseif mode == "dark" then
            vim.o.background = "dark"
          end
          -- end
        end,
      })
    end,
  },
}
