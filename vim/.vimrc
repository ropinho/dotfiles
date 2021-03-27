"Instalação de plugins com o vim-plug"

call plug#begin('~/.vim/plugged')

" Verificar sintaxe
Plug 'scrooloose/syntastic'
" Plugin do Git
Plug 'tpope/vim-fugitive'
" Para parentesis, aspas, tags XML, e mais...
Plug 'tpope/vim-surround'
" Temas de cores
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'morhetz/gruvbox'
" Árvore de diretórios e arquivos
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
" Desenvolvimento Web 
Plug 'mattn/emmet-vim'
Plug 'posva/vim-vue'
" Faça do vim sua IDE C++ 
Plug 'chxuan/cpp-mode'
Plug 'vim-jp/vim-cpp'
" Rust "
Plug 'rust-lang/rust.vim'

call plug#end()

colorscheme spaceduck
set termguicolors
syntax enable
filetype off

" Inicia o NERDTree e coloca o cursor na outra janela
autocmd VimEnter * NERDTree | wincmd p

" Iniciar o NERDTree quando o vim for aberto sem arquivos como argumentos
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Fechar o Vim se o NERDTree for a unica janela aberta
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 
    \ && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Atalhos de teclado, para TagBar e NERDTreeToggle
nmap <F8> :TagbarToggle<CR> 
nmap <F9> :NERDTreeToggle<CR>

set mouse=a     " ativa o uso do mouse no terminal se o emulador dele suportar
set colorcolumn=81             " destaca a 81a coluna do editor
set showmode                   " mostra em que modo o editor esta' atualmente
set number                     " mostra os numeros das linhas

set autoindent                 " indenta automaticamente quando quebra a linha
set shiftwidth=2               " numero de espacos para usar no autoindent
set tabstop=2
set smarttab
set expandtab
set backspace=indent,eol,start " permite deletar qualquer coisa no modo insert

set nocompatible
set history=50
set hlsearch

" Highlighting
hi Search ctermfg=yellow ctermbg=black cterm=bold

" Tambem carrega arquivos, para fazer automaticamente indentacao dependendo da
" linguagem
filetype plugin indent on

" Implementando um autofechamento de chaves, parenthesis, etc... "
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

