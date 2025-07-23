return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('render-markdown').setup {
        -- Treat both file types identically
        file_types = { 'markdown', 'mdx' },

        -- Same configuration for both
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
    build = 'cd app && npm install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
  },

  {
    'davidmh/mdx.nvim',
    config = true,
  },
}
