return {
  {
    "jdonghia/mermaid-live.nvim",
    ft = { "mermaid" },
    cmd = { "MermaidView", "MermaidStop", "MermaidOpen" },
    init = function()
      vim.filetype.add({
        extension = {
          mermaid = "mermaid",
          mmd = "mermaid",
        },
      })
    end,
    opts = {
      open_cmd = function(url)
        vim.fn.jobstart({
          "osascript",
          "-e",
          string.format(
            [[
              tell application "Arc"
                activate
                make new window
                open location "%s"
              end tell
            ]],
            url
          ),
        }, { detach = true })
      end,
    },
    keys = {
      { "<leader>mv", "<cmd>MermaidView<cr>", desc = "Mermaid live preview" },
    },
  },
}
