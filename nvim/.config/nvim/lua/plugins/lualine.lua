return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- copilot status (native LSP): shown only when a copilot client is attached
      local copilot = LazyVim.lualine.status(LazyVim.config.icons.kinds.Copilot, function()
        local clients = vim.lsp.get_clients({ name = "copilot", bufnr = 0 })
        return #clients > 0 and "ok" or nil
      end)

      opts.sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = { "diagnostics", copilot },
        lualine_y = {},
        lualine_z = {},
      }
      opts.inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      }
    end,
  },
}
