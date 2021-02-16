call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
set nocompatible
set hidden
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P\ %{fugitive#statusline()}

" Syntax
syntax on
colorscheme jellybeans
:set t_Co=256
set background=dark
colorscheme hybrid
set hlsearch
set history=10000
set showcmd
set cmdheight=2
set scrolloff=3
set wildmenu
set wildmode=list:longest,full
set number
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set ruler
set laststatus=2

" Text
set nowrap
set linebreak
set backspace=indent,eol,start
  " Tabs
set shiftwidth=2
set shiftround
set expandtab
set autoindent
  " Format
set formatoptions-=t
set textwidth=79

" File
filetype plugin indent on

autocmd FileType css set smartindent
autocmd FileType html set formatoptions+=tl
autocmd Filetype gitcommit setlocal spell textwidth=72

" Search
set ignorecase
set smartcase
set incsearch
set gdefault
set hls

" Buffer Font 
set guifont=AnonymousPro:h14

" Cursor Highlight
set cursorline

" Disable toolbar and unnecessary prompts
set guioptions-=T
set shortmess=atI

" Change <leader>
let mapleader = ","

" Change history size
set history=1000

" Remove search highlight after hitting enter
:nnoremap <CR> :nohlsearch<cr>

" Remap W to w, always do this mistake and W isnt mapped to shit
command! W :w

" Map <leader>' to switch between ' and "
nnoremap <leader>' ""yls<c-r>={'"': "'", "'": '"'}[@"]<cr><esc>"]'
 
" Map ,e and ,v to open files in the same directory as the current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

" Use tab to complete depending on context
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" Renaming file function
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'))
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <leader>n :call RenameFile()<cr>

" CtrlP Customization
map <leader>b :CtrlPBuffer<CR>
map <leader>f :CtrlP<CR>
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|app/build|app/cache|vendor|node_modules|elm-stuff)$',
  \ 'file': '\.exe$\|\.so$\|\.dll$',
  \ }

" vim-rubytest
let g:rubytest_cmd_test = "ruby -Itest %p"
map <Leader>t <Plug>RubyFileRun 

" Learn how to use vim properly
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>
command! Wq :echo "no!"<cr>

" allow airline to use powerline symbols
let g:airline_powerline_fonts = 1

" toggle rainbow parentheses
au VimEnter * RainbowParenthesesToggle

" Persistent undo between vim sessions
set undofile
set undodir=~/.vim/undodir
