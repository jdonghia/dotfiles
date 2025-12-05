return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    sections = {
      lualine_a = { 'branch' },
      lualine_b = {
        'diff',
      },
      lualine_c = {
        'filename',
        'diagnostics',
      },
      lualine_x = {},
      lualine_y = {},
      lualine_z = {
        {
          function()
            local reg = vim.fn.reg_recording()
            if reg == '' then
              return ''
            else
              return 'Recording @' .. reg
            end
          end,
        },
      },
    },
  },
}
