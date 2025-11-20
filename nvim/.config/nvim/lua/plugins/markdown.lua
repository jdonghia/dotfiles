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
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
    ft = { 'markdown' },
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
  },

  {
    'davidmh/mdx.nvim',
    config = function()
      require('mdx').setup {}
    end,
  },
}
