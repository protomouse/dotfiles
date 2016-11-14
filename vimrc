"
" Base
"
set nocompatible
set number
set tabstop=4
set completeopt-=preview


"
" Plugins
"
call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'Valloric/YouCompleteMe', { 'do': 'python install.py --gocode-completer --tern-completer --racer-completer' }
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'rust-lang/rust.vim'
call plug#end()


"
" NERDTree
"
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\~$', '\.swp$']
map <C-n> :NERDTreeToggle<CR>


"
" syntastic
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_highlighting = 1
let g:syntastic_enable_signs = 0


"
" Go
"
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:syntastic_go_checkers = ['gometalinter']
let g:syntastic_go_gometalinter_args = '--disable=gotype --fast'


"
" JavaScript
"
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'


"
" Java
"
let g:EclimCompletionMethod = 'omnifunc'


"
" Rust
"
let g:syntastic_rust_checkers = ['rustc']

