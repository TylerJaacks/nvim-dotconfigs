require('telescope').setup()

local builtin = require('telescope.builtin')

-- Keymap: CTRL + P
vim.keymap.set('n', '<c-p>', builtin.find_files, {})

-- Keymap: SPACE + SPACE
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})

-- Keymap: SPACE + F + G
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})

-- Keymap: SPACE + F + H
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
