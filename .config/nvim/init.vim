"Install plugins
call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
" Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'jiangmiao/auto-pairs'

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'kevinoid/vim-jsonc'
"  Plug 'junegunn/vim-easy-align'
Plug 'godlygeek/tabular'
Plug 'peitalin/vim-jsx-typescript'
Plug 'easymotion/vim-easymotion'
" Plug 'davidhalter/jedi-vim'

" post install (yarn install | npm install) then load plugin only for editing supported files
"Plug 'prettier/vim-prettier', {
  "\ 'do': 'yarn install',
  "\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

"Plug 'autozimu/LanguageClient-neovim', {
    "\ 'branch': 'next',
    "\ 'do': 'bash install.sh',
    "\ }

" Plug 'junegunn/fzf'

Plug 'chriskempson/base16-vim'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

" set filetype to rust
autocmd BufReadPost *.rs setlocal filetype=rust
" treat tsconfig.json as jsonc filetype
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc
" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

set hidden
set nowrap
set backupcopy=yes

" LanguageClient config

" let g:LanguageClient_serverCommands = {
"     \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
"     \ }

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" " Or map each action separately
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" Automatically start language servers.
" let g:LanguageClient_autoStart = 1


" Rust setup

let g:ale_linters = {'rust': ['rls'], 'python': ['flake8'] }
let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'rust': ['rustfmt'],
  \ 'python': ['yapf']
  \ }


let g:ale_enabled = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:ale_python_auto_pipenv = 1
let g:ale_python_flake8_auto_pipenv = 1

" This allows ctrl-space for ... well... everything
" let g:CtrlSpaceDefaultMappingKey = "<C-space> "

" More ctrl-space settings for auto saving workspace etc...
"let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
"let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
"let g:CtrlSpaceSaveWorkspaceOnExit = 1

" map ctrl-p to a ctrl-space for fuzzy search
"nnoremap <silent><C-p> :CtrlSpace O<CR>

" This will cause ctrl space to use gitignore - because ag uses git ignore
"if executable("fzf")
"  let g:CtrlSpaceGlobCommand = "fzf"
"endif

" Set the color scheme
" colorscheme base16-default-dark
set termguicolors
colorscheme gruvbox
" colorscheme base16-mocha
set background=dark

" Set relative line numbers
set number relativenumber
set nu rnu

" set the tabs to spaces (width of 2)
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab


nnoremap <silent><C-p> :Files<CR>
nnoremap <silent><C-f> :BLines<CR>

" this should give us fzf previews
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" set the layout of the fzf window
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.5, 'yoffset': 1 } }



" EASY ALIGN
" Start interactive EasyAlign in visual mode (e.g. vipga)
" xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)

" let g:easy_align_delimiters = {
" \ '/': { 'pattern': '/*\+', 'delimiter_align': 'l', 'ignore_groups': ['!Comment'] }
" \ }


" Set key mappings
noremap <C-\> :NERDTreeToggle<CR>

nnoremap <leader>/ :noh<return>

source ~/.config/nvim/cocdefault.vim

" This should auto reload everything
autocmd! bufwritepost .vimrc source %

" This will autoformat .json files
autocmd bufwritepost *.json :Tabularize / /\*

" coc-prettier requires this
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" let g:prettier#autoformat_require_pragma = 0
"let g:prettier#autoformat_config_present = 1
"let g:prettier#config#config_precedence = 'prefer-file'


" easy motion 2 character search
nmap <space> <Plug>(easymotion-s2)


" This should let us see the file name on splits
" [buffer number] followed by filename:
set statusline=[%n]\ %t
" show line#:column# on the right hand side
set statusline+=%=%l:%c


set splitbelow
set splitright
