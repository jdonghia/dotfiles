return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      -- Use <C-j> to accept the completion/snippet instead of <CR>
      ["<C-j>"] = { "accept", "fallback" },
      -- Let <CR> behave as a normal newline again
      ["<CR>"] = { "fallback" },
    },
  },
}
