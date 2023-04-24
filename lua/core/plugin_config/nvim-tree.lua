vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  view = {
    adaptive_size = true
  }
})

-- Keymap: CTRL + N
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
