set nu
imap ;; <Esc>

set nocompatible              " be iMproved, required
filetype off                  " required

syntax on
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set omnifunc=syntaxcomplete#Complete

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"

" Useful plugins
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'    " Snippets are separated from the engine. Add this if you want them:
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-ragtag'
Plugin 'tomtom/tcomment_vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'godlygeek/tabular'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/tpope-vim-abolish'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-projectionist'

" Plugins for Ruby and Rails app development
Bundle 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-haml'
Plugin 'kchmck/vim-coffee-script'

" Plugins for php development
Bundle 'vim-php/vim-php-refactoring'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'joonty/vdebug'
Plugin 'noahfrederick/vim-laravel'

" Plugins for javascript coding
Plugin 'pangloss/vim-javascript'
Plugin 'ternjs/tern_for_vim'

" Plugin for markdown files editing
Plugin 'plasticboy/vim-markdown'

" Plugin for apiblueprint files editing
Plugin 'kylef/apiblueprint.vim'

" Plugins to test
" Plugin 'vim-scripts/dbext.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax enable
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
" autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
" autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
"

" colorscheme desert
colorscheme harlequin

" [vim-markdown]
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

let g:php_refactor_command='php ~/phars/refactor.phar'

"[UltiSnips] Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-K>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsUsePythonVersion = 2
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"[NerdTreeTabs]Open NERDTree on console vim startup. (When set to 2, open only if directory
"was given as startup argument).
let g:nerdtree_tabs_open_on_console_startup = 2

" [Vdebug] Vdebug settings
let g:vdebug_options = {}
let g:vdebug_options["port"] = 9000

" [Syntastic] 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
