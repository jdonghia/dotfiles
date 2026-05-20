return {
  "mistricky/codesnap.nvim",
  tag = "v2.0.0",
  cmd = { "CodeSnap", "CodeSnapSave", "CodeSnapHighlight", "CodeSnapHighlightSave", "CodeSnapASCII", "Snap" },
  config = function()
    local themes_dir = vim.fn.stdpath("config") .. "/themes"

    require("codesnap").setup({
      show_line_number = false,
      show_workspace = false,
      snapshot_config = {
        theme = "one-for-all",
        background = "#00000000",
        window = {
          mac_window_bar = false,
          shadow = { radius = 0, color = "#00000000" },
          margin = { x = 0, y = 0 },
          border = { width = 0, color = "#00000000" },
        },
        code_config = {
          breadcrumbs = { enable = false },
        },
        watermark = { content = "" },
      },
    })

    -- codesnap.nvim's merge_config recurses into empty default tables and
    -- silently drops user values, so themes_folders has to be assigned
    -- directly after setup or the custom theme can't be found.
    require("codesnap.static").config.snapshot_config.themes_folders = { themes_dir }
  end,
}
