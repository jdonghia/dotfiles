return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      -- only keep pinned buffers on the bufferline
      custom_filter = function(buf)
        local ok, groups = pcall(require, "bufferline.groups")
        if not ok then
          return true
        end
        return groups._is_pinned({ id = buf })
      end,
    },
  },
}
