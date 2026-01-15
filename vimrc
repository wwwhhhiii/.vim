syntax on
set number
set encoding=UTF-8
filetype plugin on
" disable line wrap
set wrap!
" set tab to N spaces (mainly for go)
set ts=2

" new blank tab
noremap <C-t> :tabnew<CR>
" close whole tab
noremap <C-UP> :tabclose<CR>
" next tab
noremap <C-l> :tabnext<CR>
" previous tab
noremap <C-h> :tabprevious<CR>

" vim-plug
call plug#begin()
 Plug 'prabirshrestha/vim-lsp'
 Plug 'mattn/vim-lsp-settings'
 Plug 'prabirshrestha/asyncomplete.vim'
 Plug 'prabirshrestha/asyncomplete-lsp.vim'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'
 Plug 'preservim/nerdtree'
 Plug 'tpope/vim-fugitive'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'jremmen/vim-ripgrep'
 Plug 'ryanoasis/vim-devicons'
 Plug 'vim-python/python-syntax'
 Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
 Plug 'altercation/vim-colors-solarized'
 Plug 'nathanaelkane/vim-indent-guides'
 Plug 'joshdick/onedark.vim'
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
map <C-\> :NERDTreeFind<CR>

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
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1

""" color scheme
colorscheme onedark

""" change indent lines colors to match colorscheme
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=lightgrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey
