return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "solarized-osaka",
      -- colorscheme = function() end,
      colorscheme = "kanagawa",
    },
  },
  { "rebelot/kanagawa.nvim" },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     transparent = true,
  --   },
  -- },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
}
