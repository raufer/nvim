local M = {}

local function open_nvim_tree()
  -- open the tree
  require("nvim-tree.api").tree.open()
end

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
  vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
  vim.keymap.set('n', 'l',     api.node.open.edit,                    opts('Open'))
  vim.keymap.set('n', 'h',     api.node.navigate.parent_close,        opts('Close Dir'))

end

M.on_attach = my_on_attach

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

return M
