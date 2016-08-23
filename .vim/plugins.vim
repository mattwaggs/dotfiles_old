
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle is required
Plugin 'VundleVim/Vundle.vim'

" tools
Plugin 'tpope/vim-speeddating'           " allows for easy date inc/dec of dates by using <C-A> and <C-X>
Plugin 'vimwiki/vimwiki'                 " for making a personal wiki !!!! a mapping for \ww already exists?

" window management
Plugin 'roman/golden-ratio'              " automatic window resizing
Plugin 'wesq3/vim-windowswap'            " swap windows around without breaking layout.

" Formatting
Plugin 'Smart-Tabs'                      " formats indentation with tabs infront, spaces after
Plugin 'junegunn/vim-easy-align'         " auto align at symbols like = sign
Plugin 'json-formatter.vim'              " * format json files. Requires node module: npm install jjsoh -g
Plugin 'michaeljsmith/vim-indent-object' " defines text object represting a block of code at the same indent level
Plugin 'tpope/vim-surround'              " makes quoting and parenthesizing easier
Plugin 'mattn/emmet-vim'                 " emmet plugin for expanding abbreviations. see emmet.io
Plugin 'scrooloose/nerdcommenter'        " A better commenting plugin
Plugin 'matchit.zip'                     " extends % matching to html and other languages. i.e. % goes to closing tag

" Visual
Plugin 'bling/vim-airline'               " status bar / tabline at bottom of window
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'flazz/vim-colorschemes'          " a colorschemes pack for vim
" Plugin 'ntpeters/vim-better-whitespace'  " shows trailing whitespace more clearly
Plugin 'mbbill/undotree'                 " undo tree visualizer

" Git
Plugin 'tpope/vim-fugitive'              " best git plugin for vim
Plugin 'airblade/vim-gitgutter'          " show the git diff next to line numbers :GitGutterToggle

" navigation / searching
Plugin 'scrooloose/nerdtree'             " navigation tree
Plugin 'jistr/vim-nerdtree-tabs'         " makes nerd tree a single panel among tabs
Plugin 'tpope/vim-vinegar'               " use - to display files in directory
Plugin 'ctrlpvim/ctrlp.vim'              " fuzzy searching with ctrl-p
Plugin 'szw/vim-ctrlspace'

" auto complete
Plugin 'valloric/youcompleteme'          " * Autocompletion plugin for vim (there is a lot to install here)
Plugin 'rdnetto/YCM-Generator'

" Addtional Plugin Helpers
Plugin 'rking/ag.vim'

" syntax plugins
Plugin 'scrooloose/syntastic'            " syntax checking for vim
Plugin 'groenewege/vim-less'             " vim syntax for LESS
Plugin 'mxw/vim-jsx'                     " vim syntax for jsx
Plugin 'cakebaker/scss-syntax.vim'       " vim syntax for SCSS
Plugin 'leafgarland/typescript-vim'      " vim syntax for typescript
Plugin 'pangloss/vim-javascript'         " javascript syntax for vim


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal

