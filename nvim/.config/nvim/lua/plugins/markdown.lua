return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('render-markdown').setup {
        file_types = { 'markdown', 'mdx' },
      }
    end,
  },
  {
    'davidmh/mdx.nvim',
  },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && npm install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
      vim.g.mkdp_browserfunc = 'OpenMarkdownPreview'
      vim.cmd [[
        function OpenMarkdownPreview(url)
          execute "silent ! open -a Zen -n --args --new-window " . a:url
        endfunction
      ]]
    end,
    ft = { 'markdown' },
  },
}
