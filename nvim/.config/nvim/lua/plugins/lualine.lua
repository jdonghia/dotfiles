return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local colors = {
      bg = '#272822',
      fg = '#fdfff1',
      red = '#f92672',
      green = '#a6e22e',
      blue = '#66d9ef',
      yellow = '#e6db74',
      orange = '#fd971f',
      purple = '#ae81ff',
      dark1 = '#1d1e19',
      dark2 = '#161613',
      gray1 = '#c0c1b5',
      gray2 = '#919288',
      gray3 = '#6e7066',
      gray4 = '#57584f',
      gray5 = '#3b3c35',
    }

    local monokai = {
      normal = {
        a = { fg = colors.bg, bg = colors.green, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.gray4 },
        c = { fg = colors.gray1, bg = colors.bg },
      },
      insert = {
        a = { fg = colors.bg, bg = colors.blue, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.gray4 },
      },
      visual = {
        a = { fg = colors.bg, bg = colors.purple, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.gray4 },
      },
      replace = {
        a = { fg = colors.bg, bg = colors.red, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.gray4 },
      },
      command = {
        a = { fg = colors.bg, bg = colors.yellow, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.gray4 },
      },
      inactive = {
        a = { fg = colors.gray2, bg = colors.dark1 },
        b = { fg = colors.gray3, bg = colors.dark1 },
        c = { fg = colors.gray3, bg = colors.dark1 },
      },
    }

    require('lualine').setup {
      options = {
        theme = monokai,
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'filename' },
        lualine_c = { '' },
        lualine_x = { '' },
        lualine_y = { 'diagnostics' },
        lualine_z = { 'branch' },
      },
    }
  end,
}
