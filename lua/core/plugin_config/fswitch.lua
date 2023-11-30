-- TODO

-- Switching between source and header file
-- Switching between source and header files is another common operation when working with C++.

-- After searching and trying many solutions, I settled on vim-fswitch plugin. Personally, I like this plugin for its simple configuration for various file types and the absence of third-party dependencies.

-- Install it with your favorite package manager. It will perfectly works out of the box, but sometimes you want to configure switch destination files like this:

-- au BufEnter *.h  let b:fswitchdst = "c,cpp,cc,m"
-- au BufEnter *.cc let b:fswitchdst = "h,hpp"
-- There is also one more nuance (thanks Elias Daler for sharing this!).

-- A lot of C++ projects follow this convention for splitting headers and sources:

-- include/<project-name>/<path>/some_header.h
-- src/<path>/some_source.cpp
-- To make FSwitch work with such cases (when switching from header to source), you need to add this to vimrc:

-- au BufEnter *.h let b:fswitchdst = 'c,cpp,m,cc' | let b:fswitchlocs = 'reg:|include.*|src/**|'
-- It also will be convenient to set up some key bindings:

-- nnoremap <silent> <A-o> :FSHere<cr>
-- " Extra hotkeys to open header/source in the split
-- nnoremap <silent> <localleader>oh :FSSplitLeft<cr>
-- nnoremap <silent> <localleader>oj :FSSplitBelow<cr>
-- nnoremap <silent> <localleader>ok :FSSplitAbove<cr>
-- nnoremap <silent> <localleader>ol :FSSplitRight<cr>
-- Alternatives:

-- There are many other options described in this vimwiki article. You can try them or write your own solution.