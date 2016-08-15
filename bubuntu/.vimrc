
set number
set numberwidth=1

set ignorecase
set incsearch

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set list



"MAPINGS BEGIN

"edit and source .vimrc
nnoremap <leader>emv :vsplit $MYVIMRC<cr>
nnoremap <leader>smv :source $MYVIMRC<cr>

nnoremap <leader>r :set relativenumber!<cr>

" move line up/down (advise from "learn vim script the hard way")
noremap <leader>- ddp
noremap <leader>_ ddkP

" convert current word to upper case while in insert mode AND normal mode
" from "learn vim script the hard way"
inoremap <leader>u <esc>vawUea
nnoremap <leader>u vawUea


" map '//' to search for selected text in visual mode
vnoremap // y/<C-R>"<CR>

"start 'search and replace'
nnoremap <C-h> :%s/

"MAPINGS END"




set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab




" VUNDLE

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" YouCompleteMe
Plugin 'https://github.com/Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1


" YCM Generator
Plugin 'https://github.com/rdnetto/YCM-Generator'

" L9
Plugin 'L9'

" Nerd Commenter
Plugin 'https://github.com/scrooloose/nerdcommenter'

" QML syntax
Plugin 'https://github.com/peterhoeg/vim-qml'

" CtrlP
Plugin 'https://github.com/kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" vim-cmake
Bundle 'jalcine/cmake.vim'

" GDB plugin
Plugin 'vim-scripts/Conque-GDB'
let g:ConqueTerm_Color = 2         " 1: strip color after 200 lines, 2: always with color
let g:ConqueTerm_CloseOnEnd = 1    " close conque when program ends running
let g:ConqueTerm_StartMessages = 0 " display warning messages if conqueTerm is configured incorrectly 

" auto-pairs
Plugin 'https://github.com/jiangmiao/auto-pairs'

" solorized theme
Plugin 'https://github.com/altercation/vim-colors-solarized'

"vim-markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'


Plugin 'davidhalter/jedi-vim'

Plugin 'git://github.com/tpope/vim-surround.git'

" VUNDLE




" gvim nly settings
if has('gui_running')
    " enable solorized theme
    syntax enable
    set background=light
    "colorscheme solarized

    " set font
    set guifont=Mono\ 12

    "maximize window
    set lines=999 columns=999

endif

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



autocmd VimEnter * echo ">^.^<"
