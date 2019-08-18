if exists('g:loaded_plugins_system_loader')
  finish
endif
let g:loaded_plugins_system_loader = 1

""""""" ctrlp

let g:ctrlp_map = '<Nop>'
let g:ctrlp_match_window = 'bottom,order:ttb,min:10'
let g:ctrlp_switch_buffer = 'e'

let g:ctrlp_prompt_mappings = {
\ 'PrtBS()':              ['<bs>', '<c-]>'],
\ 'PrtDelete()':          ['<del>'],
\ 'PrtDeleteWord()':      ['<c-w>'],
\ 'PrtClear()':           ['<c-u>'],
\ 'PrtSelectMove("j")':   ['<c-n>', '<c-j>', '<down>'],
\ 'PrtSelectMove("k")':   ['<c-p>', '<c-k>', '<up>'],
\ 'PrtSelectMove("t")':   ['<Home>', '<kHome>'],
\ 'PrtSelectMove("b")':   ['<End>', '<kEnd>'],
\ 'PrtSelectMove("u")':   ['<PageUp>', '<kPageUp>'],
\ 'PrtSelectMove("d")':   ['<PageDown>', '<kPageDown>'],
\ 'PrtHistory(-1)':       [],
\ 'PrtHistory(1)':        [],
\ 'AcceptSelection("e")': [],
\ 'AcceptSelection("h")': ['<cr>', '<2-LeftMouse>'],
\ 'AcceptSelection("t")': [],
\ 'AcceptSelection("v")': [],
\ 'ToggleFocus()':        ['<s-tab>'],
\ 'ToggleRegex()':        ['<c-x>'],
\ 'ToggleByFname()':      ['<c-d>'],
\ 'ToggleType(1)':        ['<c-f>', '<c-up>'],
\ 'ToggleType(-1)':       ['<c-b>', '<c-down>'],
\ 'PrtExpandDir()':       ['<tab>'],
\ 'PrtInsert("c")':       ['<MiddleMouse>', '<insert>'],
\ 'PrtInsert()':          ['<c-\>'],
\ 'PrtCurStart()':        ['<c-a>'],
\ 'PrtCurEnd()':          ['<c-e>'],
\ 'PrtCurLeft()':         ['<c-h>', '<left>', '<c-^>'],
\ 'PrtCurRight()':        ['<c-l>', '<right>'],
\ 'PrtClearCache()':      ['<F5>'],
\ 'PrtDeleteEnt()':       ['<F7>'],
\ 'CreateNewFile()':      ['<c-y>'],
\ 'MarkToOpen()':         ['<c-Space>', '<c-m>'],
\ 'OpenMulti()':          ['<c-o>'],
\ 'PrtExit()':            ['<esc>', '<c-c>', '<c-g>'],
\ }

packadd ctrlp

nnoremap <C-x> <Nop>
nnoremap <C-x><Space> :<C-u>CtrlP<Space>
nnoremap <C-x><C-x> :<C-u>CtrlPMixed<CR>
nnoremap <C-x><C-r> :<C-u>CtrlPMRUFiles<CR>
nnoremap <C-x><C-b> :<C-u>CtrlPBuffer<CR>
nnoremap <C-x><C-d> :<C-u>CtrlPDir<CR>
nnoremap <C-x><C-l> :<C-u>CtrlPLine<CR>
nnoremap <C-x><C-q> :<C-u>CtrlPQuickfix<CR>
nnoremap <C-x><C-t> :<C-u>CtrlPTag<CR>

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

