" Instalação de plugins com o vim-plug"

call plug#begin('~/.vim/plugged')

" Tema de cores Embark
Plug 'embark-theme/vim', { 'as': 'embark' }

" Árvore de diretórios e arquivos
Plug 'preservim/nerdtree'

" Faça do vim sua IDE C++
Plug 'chxuan/cpp-mode'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

set termguicolors
colorscheme embark

set mouse=a                     " enable using mouse if terminal emulator supports it "
set showmode                    " allow show what mode we're currently editing in "
set number                      " enable and display line numbers "
set tabstop=4                   " length of tabulation "
set softtabstop=4               " pretend like a tab is removed, even if spaces "
set shiftwidth=4                " number of spaces to use for autoindenting "
set colorcolumn=81

set smarttab                    " insert tab on the start of a line according shiftwidth "
set autoindent                  " atomatic indentation when break row "
set copyindent                  ""
set backspace=indent,eol,start  " allow backspacing over everything in insert mode "
set ignorecase                  " match searches with NO case-sensitive "
set smartcase                   ""

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
