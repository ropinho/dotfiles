"Instalação de plugins com o vim-plug"

call plug#begin('~/.vim/plugged')

" Plugin do Git
Plug 'tpope/vim-fugitive'

" Temas de cores
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'embark-theme/vim', { 'as': 'embark' }

" Árvore de diretórios e arquivos
Plug 'preservim/nerdtree'

" Faça do vim sua IDE C++ 
Plug 'chxuan/cpp-mode'
Plug 'vim-jp/vim-cpp'

call plug#end()

" Configurações do Java Autocomplete
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

set termguicolors
colorscheme spaceduck

set mouse=a                     " enable using mouse if terminal emulator supports it "
set colorcolumn=81              " color the 81th column for reference "
set showmode                    " allow show what mode we're currently editing in "
set number                      " enable and display line numbers "

"?"
set tabstop=4                   " length of tabulation "
set softtabstop=4               " pretend like a tab is removed, even if spaces "
set smarttab                    " insert tab on the start of a line according shiftwidth "
set autoindent                  " atomatic indentation when break row "
set shiftwidth=4                " number of spaces to use for autoindent "
set backspace=indent,eol,start  " allow backspacing over everything in insert mode "
set ignorecase                  " match searches with NO case-sensitive "
set smartcase                   ""
set smarttab                    ""
set scrolloff=4                 ""
set nocompatible                " Use vim defaults (drop compatibility with vi) "
set history=50                  " keep 50 command lines in history "
set hlsearch                    " Switch on highlighting the last used search pattern. "

syntax enable

" Highlighting "
hi Search ctermfg=yellow ctermbg=black cterm=bold

filetype off
" Also load indent files, to automatically do language-dependent indenting. "
filetype plugin indent on

" Implementando um autofechamento de chaves, parenthesis, etc... "
" inoremap " ""<left> "
" inoremap ' ''<left> "
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
