" Skip for vim-tiny and vim-small
if !1 | finish | endif

if has("mac")
  source $VIMRUNTIME/defaults.vim
endif

if has("autocmd")
  augroup MyAutocmd
    autocmd!
  augroup END
endif

" use <C-Space> keymap
if !has('gui_running')
  augroup term_vim_c_space
    autocmd!
    autocmd VimEnter * map <Nul> <C-Space>
    autocmd VimEnter * map! <Nul> <C-Space>
  augroup END
endif

set laststatus=2

set hlsearch

""" viminfo
" ': max mark reserved files
" <: max lines for each registers
" s: max flags in Kbytes
" no h: preserve hlsearch setting
set viminfo='100,<1000,s80

""" erase search highlight
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

""" emacs binding for command line
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>

""" Display settings
" Show tab and eol
set list
set listchars=eol:↲,tab:▸-,trail:_,extends:»,precedes:«,nbsp:%
if exists('g:has_conceal')
  set listchars+=conceal:.
endif
" show continuous line
set showbreak=»

if has("autocmd")
  " restore cursor position on file loading
  autocmd MyAutocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif

  " force nopaste on leaving insert mode
  autocmd MyAutocmd InsertLeave * set nopaste
endif
