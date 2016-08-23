
"-------------------Vundle-----------------"
set nocompatible                                                " be iMproved, required
set hidden
so ~/.vim/plugins.vim



"------------------Pathogen----------------"
" execute pathogen#infect()



"-----------------My Config----------------"
filetype plugin indent on
syntax on
set modifiable
" this enables "visual" wrapping
set nowrap

" this turns off physical line wrapping (ie: automatic insertion of newlines)
set textwidth=0 wrapmargin=0


"-----------------Visuals------------------"
set t_CO=256                                                    " terminal vim force use 256 colors
"colorscheme base16-railscast.dark                               " use atom dark theme
set backspace=indent,eol,start                                  " Make backspace behave like every other editor
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab     " tab configuration use 4 spaces
set relativenumber
set number                                                      " Show line numbers

hi cursorlinenr ctermfg=yellow
hi linenr ctermfg=darkgrey

"-----------------Search-------------------"
set hlsearch                                                    " highlight searches
set incsearch                                                   " highlight incremental searches


"------------------ctrl-space--------------"
hi CtrlSpaceNormal      guibg=NONE gui=bold ctermfg=8 ctermbg=0 term=none cterm=none
hi CtrlSpaceSearch      guibg=NONE gui=bold ctermfg=8 ctermbg=0 term=none cterm=none
hi CtrlSpaceSelected    guibg=NONE gui=bold ctermfg=0 ctermbg=8 term=none cterm=none
hi CtrlSpaceStatus      guibg=NONE gui=bold ctermfg=8 ctermbg=0 term=none cterm=none


"-----------------golden ratio -----------"
let g:golden_ratio_autocommand = 0 " completly disable auto ratio


"-----------------Mappings-----------------"

" make it easy to edit the vimrc file by typing \ev in normal mode
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" simple highlight removal with backslash space
nmap <Leader><space> :nohlsearch<cr>

" make it easier to open nerd tree
silent! map <C-\> :NERDTreeToggle<cr>
let NERDTreeQuitOnOpen=0
" silent! map <C-\> :NERDTreeFind<cr>
" let g:NERDTreeMapActivateNode="<C-\>"

" [ctrl]+[h] goes to beginning of line, [ctrl]+[l] goes to end
noremap <C-H> 0
noremap <C-L> $

" indent guides toggle
nmap <F2> <Leader>ig

" window swap key bindings
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>


" VimWiki
let g:vimwiki_list = [{'path': '~/Documents/wiki/',
                       \ 'syntax': 'markdown', 'ext': '.md'}]

" golden ratio resize current window
noremap <leader>gr :GoldenRatioResize<cr>


"-------------Ctrl Space -----------------"
let g:CtrlSpaceIgnoredFiles = 'node_modules'

if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif


"------------Split management-------------"
set splitbelow                                                  " by default vim splits above the current
set splitright                                                  " by default vim splits to the left

" Instead of [ctrl]+[w]+[H,J,K,L] just use [Ctrl]+[H,J,K,L]
" nnoremap <C-S-H> <C-W><C-H>
" nnoremap <C-S-J> <C-W><C-J>
" nnoremap <C-S-K> <C-W><C-K>
" nnoremap <C-S-L> <C-W><C-L>

noremap <silent> <C-S-F5> :vertical resize -5<cr>
noremap <silent> <C-S-F7> :vertical resize +5<cr>
noremap <silent> <C-S-F6> <C-W>=<cr>

" air-line
let g:airline_powerline_fonts = 1
set laststatus=2
set ttimeoutlen=50

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_theme='wombat_alternate'

set list        " Display unprintable characters f12 - switches
set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping
set invlist     " set invlist can be used to toggle showing unprintable characters.

"-----------------Auto-Commands------------"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jsxhint']


xmap ga <Plug>(EasyAlign)

"-----------------Auto-Commands------------"

"Automatically source the vimrc file on save.
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END


