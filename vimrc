set number
set encoding=UTF-8
filetype plugin on
syntax on

" vim-plug
call plug#begin()
 Plug 'prabirshrestha/vim-lsp'
 Plug 'mattn/vim-lsp-settings'
 Plug 'prabirshrestha/asyncomplete.vim'
 Plug 'prabirshrestha/asyncomplete-lsp.vim'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'
 Plug 'preservim/nerdtree'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'jremmen/vim-ripgrep'
 Plug 'ryanoasis/vim-devicons'
 Plug 'vim-python/python-syntax'
 Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
 Plug 'Yggdroot/indentLine'
call plug#end()

""" fzf
" search files
map <C-p> :Files<CR>
" search regex in files (ripgrep)
map <C-f> :RG<CR>

let g:fzf_vim = {}
" Preview window is hidden by default. You can toggle it with ctrl-/.
" It will show on the right with 50% width, but if the width is smaller
" than 70 columns, it will show above the candidate list
let g:fzf_vim.preview_window = ['right,50%,<50(up,40%)', 'ctrl-/']

""" NERDTree
" toggle nerdtree
map <C-n> :NERDTreeToggle<CR>
" find opened buffer in a tree
map <C-t> :NERDTreeFind<CR>

""" NERDTreeGitPlugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

""" python-syntax
let g:python_highlight_all = 1

""" lsp settings
let g:lsp_settings = {
  \ 'pylsp-all': {
    \ 'workspace_config': {
      \ 'pylsp': {
        \ 'configurationSources': ['flake8'],
        \ 'plugins': { 
          \ 'flake8': {
            \ 'maxLineLength': 100
          \ },
          \ 'pycodestyle': {
            \ 'maxLineLength': 100
          \ }
        \ }
      \ }
    \ }
  \ }
\ }

""" Indent-line
let g:indentLine_color_term = 239
" convert tabs to spaces
:set list lcs=tab:\|\ 
