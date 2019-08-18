if has("mac")
  source $VIMRUNTIME/defaults.vim
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
