return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('render-markdown').setup {
        file_types = { 'markdown', 'mdx' },

        enabled = true,
        max_file_size = 10.0,
        debounce = 100,
      }
    end,
    ft = { 'markdown', 'mdx' },
  },

  {
    'davidmh/mdx.nvim',
  },
}
