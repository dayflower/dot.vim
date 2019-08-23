if exists('g:loaded_plugins_system_loader')
  finish
endif
let g:loaded_plugins_system_loader = 1

""""""" ctrlp

let g:ctrlp_map = '<Nop>'
let g:ctrlp_match_window = 'bottom,order:ttb,min:10'
let g:ctrlp_switch_buffer = 'e'

function! CtrlPHorzOpenFunc(action, line)
  call call('ctrlp#acceptfile', ['h', a:line])
endfunction

let g:ctrlp_open_func = {
\   'files':           'CtrlPHorzOpenFunc',
\   'mru files':       'CtrlPHorzOpenFunc',
\   'fil + mru + buf': 'CtrlPHorzOpenFunc',
\ }

packadd ctrlp

nnoremap <C-x> <Nop>
nnoremap <C-x><Space> :<C-u>CtrlP<Space>
nnoremap <silent> <C-x><C-f> :<C-u>CtrlP<CR>
nnoremap <silent> <C-x><C-x> :<C-u>CtrlPMixed<CR>
nnoremap <silent> <C-x><C-r> :<C-u>CtrlPMRUFiles<CR>
nnoremap <silent> <C-x><C-b> :<C-u>CtrlPBuffer<CR>
nnoremap <silent> <C-x><C-d> :<C-u>CtrlPDir<CR>
nnoremap <silent> <C-x><C-g> :<C-u>CtrlPLine<CR>
nnoremap <silent> <C-x><C-q> :<C-u>CtrlPQuickfix<CR>
nnoremap <silent> <C-x><C-t> :<C-u>CtrlPTag<CR>

""""""" yankround

packadd yankround

nmap p <Plug>(yankround-p)
xmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
xmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)

" with ctrlp
nnoremap <C-x><C-y> :<C-u>CtrlPYankRound<CR>

""""""" wildfire

" won't work on CLI terminal
let g:wildfire_water_map = '<C-Enter>'
vmap <BS> <Plug>(wildfire-water)

let g:wildfire_objects = {
\   '*':        split("iw i' i\" i) i] i} ip it"),
\   'html,xml': split("iw i' i\" i) i] i} ip it at"),
\ }

packadd wildfire

""""""" undotree

packadd undotree

noremap <C-x><C-u> :<C-u>UndotreeToggle<CR>

""""""" lightline

let g:lightline = {
\ 'colorscheme': 'solarized',
\ 'component': {
\   'readonly': '%{&readonly?"x":""}',
\ },
\ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
\ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
\ }

packadd lightline

