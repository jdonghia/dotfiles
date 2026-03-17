return {
  'brianhuster/live-preview.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('livepreview.config').set({
      browser = 'open -na "Google Chrome"',
    })
  end,
}
