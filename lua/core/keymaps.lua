-- Keymap: CTRL + K
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
-- Keymap: CTRL + J
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
-- Keymap: CTRL + H
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
-- Keymap: CTRL + L
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Keymap: <Leader> + H
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Highlight trailing whitespaces
vim.cmd([[
  highlight ExtraWhitespace ctermbg=red guibg=red
  autocmd BufWinEnter * match ExtraWhitespace /\s\+$/ 
  autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
  autocmd InsertLeave * match ExtraWhitespace /\s\+$/ 
  autocmd BufWinLeave * call clearmatches()
]])

-- TODO
-- Remove trailing spaces.
-- nnoremap <silent> <leader>rs :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>