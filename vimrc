set number
set encoding=UTF-8
filetype plugin on
syntax on

" vim-plug
call plug#begin()
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }""" fzf
 Plug 'junegunn/fzf.vim'
 Plug 'preservim/nerdtree'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'jremmen/vim-ripgrep'
 Plug 'ryanoasis/vim-devicons'
 Plug 'vim-python/python-syntax'
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
map <C-i> :NERDTreeFind<CR>

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
