
set number
set numberwidth=1

set ignorecase
set incsearch

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set list

set nocompatible              " be iMproved, required
filetype off                  " required


filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab




"MAPINGS BEGIN

nnoremap <leader>gto :YcmCompleter GoTo<CR>
nnoremap <leader>fit :YcmCompleter FixIt<CR>

" Delete All Whitespaces
nnoremap <leader>daw ::%s/\s\+$//<CR>

"edit and source .vimrc
nnoremap <leader>emv :vsplit $MYVIMRC<cr>
nnoremap <leader>smv :source $MYVIMRC<cr>

"Toogle RelativeNumber
nnoremap <leader>trn :set relativenumber!<cr>

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

" Open NERDTree
map <C-n> :NERDTreeToggle<CR>

"MAPINGS END"




" VUNDLE

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" L9 - helper lib
Plugin 'L9'

" YouCompleteMe
Plugin 'https://github.com/Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
" YCM Generator
Plugin 'https://github.com/rdnetto/YCM-Generator'

" Nerd Tree
Plugin 'https://github.com/scrooloose/nerdtree'
let NERDTreeIgnore = ['\.pyc$','\.o$']
" git plugin for NERDTree
Plugin 'https://github.com/Xuyuanp/nerdtree-git-plugin'
" Nerd Commenter
Plugin 'https://github.com/scrooloose/nerdcommenter'

" Show git changes on lines
Plugin 'https://github.com/airblade/vim-gitgutter'

" QML syntax
Plugin 'https://github.com/peterhoeg/vim-qml'

" CtrlP
Plugin 'https://github.com/kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" vim-cmake
Bundle 'jalcine/cmake.vim'

" auto-pairs
Plugin 'https://github.com/Townk/vim-autoclose'

"vim-markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Python autocompletion
Plugin 'davidhalter/jedi-vim'

Plugin 'git://github.com/tpope/vim-surround.git'

" Snippets related
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'https://github.com/honza/vim-snippets'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" toogle beetwen source/header
Plugin 'https://github.com/vim-scripts/a.vim'

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
