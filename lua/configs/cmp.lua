local cmp = require('cmp')


cmp.setup({
  -- sources = {
  --   { name = "copilot", group_index = 1, keyword_pattern = "." },
  --   { name = "nvim_lsp", group_index = 2 },
  --   { name = "buffer", group_index = 3 },
  --   { name = "path", group_index = 4 },
  -- },
  preselect = cmp.PreselectMode.None,

  completion = {
    keyword_length = 2,
    completeopt = "noselect",
  },

  experimental = {
      ghost_text = true,
  }
})
