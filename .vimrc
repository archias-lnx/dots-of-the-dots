"  █░  ░█ █████  █▒  ▒█ █████   ░███▒
"  ▓▒  ▒▓   █    ██  ██ █   ▓█ ░█▒ ░█
"  ▒█  █▒   █    ██░░██ █    █ █▒    
"   █  █    █    █▒▓▓▒█ █   ▒█ █     
"   █░░█    █    █ ██ █ █████  █     
"   ▓▒▒▓    █    █ █▓ █ █  ░█▒ █     
"   ▒██▒    █    █    █ █   ░█ █▒    
"    ██     █    █    █ █    █ ░█▒ ░▓
"    ██   █████  █    █ █    ▒  ▒███▒
                                   
 " PLUGINS {{{
call plug#begin('~/.vim/plugged')

" tested plugins
Plug 'ajh17/vimcompletesme' " tab autocompletion for vim
Plug 'tpope/vim-commentary' " comment single lines with gcc
Plug 'w0rp/ale' " asynchronous linting engine for vim 
Plug 'flazz/vim-colorschemes'
Plug '/usr/bin/fzf'
Plug 'arcticicestudio/nord-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'


Plug 'tpope/vim-surround' " for changing ( or '

Plug 'xolox/vim-misc'
Plug 'xolox/vim-lua-ftplugin'
Plug 'tbastos/vim-lua'

Plug 'tpope/vim-eunuch' " unix commands in vim 

Plug 'preservim/nerdtree'
Plug 'ARM9/arm-syntax-vim'




" Testing for Grammar Checking
" Plug 'rhysd/vim-grammarous'

call plug#end()
" }}}


" Plugin settings {{{
set background=dark
set shiftwidth=2
set tabstop=2
colorscheme nord 

let g:ale_sign_column_always = 1
let g:ale_completion_enabled = 1

" let g:UltiSnipsExpandTrigger = ",."
" let g:UltiSnipsJumpForwardTrigger = ",."
" let g:UltiSnipsJumpBackwardTrigger = ",-"
" let g:UltiSnipsSnippetDirectories = ["~/.vim/mysnippets", "mysnippets","UltiSnips"]
" let g:UltiSnipsEditSplit = "context"

"Powerline
 let g:airline_powerline_fonts = 1
 let g:Powerline_symbols = 'fancy'
" let g:airline_theme='nord'
" let g:airline_theme='hybridline'


function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('cpp', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('jpg', 'magenta', 'none', 'magenta', '#151515')

let g:lf_open_new_tab = 1
let g:lf_replace_netrw = 1
let g:lf_command_override = 'lf -command "set hidden"'


map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1
" end Plugin settings }}}


" basic settings {{{
syntax on
set encoding=utf-8
set clipboard=unnamedplus
set history=1000
set mouse=a
set number
set relativenumber
set expandtab
set hidden
set ignorecase
set smartcase
set incsearch
set hlsearch
set lazyredraw
set scrolloff=5
set foldmethod=indent


"set list
"set listchars+=extends:❯,precedes:❮
set showbreak=↪
set nowrap
set linebreak

set wildmenu
set wildignore=*.o,*.pyc,*.out,*.aux

filetype plugin on
filetype indent on

au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Only show cursorline in current window in insert mode
augroup cline
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END

hi Normal ctermbg=None


" end basic settings }}}


" basic key mappings {{{
" free keys {{{
" ö ü ä
" Q (switch to Ex mode)
" Z except ZZ, ZQ
" \
" gb, gc, gl, gx, gy, gz
" zp, zq, zu, zy
" cd, cm, co, cp, cq, cr, cs, cu, cx, cy
" dc, dm, do, dp, dq, dr, ds, du, dx, dy
" gA, gB, gC, gG, gK, gL, gM, gO, gS, gX, gY, gZ
" zB, zI, zJ, zK, zP, zQ, zP, zS, zT, zU, zV, zY, zZ
" ]a, ]b, ]e, ]g, ]h, ]j, ]k, ]l, ]n, ]o, ]q, ]r, ]t, ]u, ]v, ]w, ]x, ]y
" [a, [b, [e, [g, [h, [j, [k, [l, [n, [o, [q, [r, [t, [u, [v, [w, [x, [y
" CTRL-G, CTRL-K
" CTRL-\ a - z (reserved for extensions)
" CTRL-\ A - Z (not used)
" }}}
let maplocalleader = "\\"
let mapleader = " "

" <c-r>= (ctrl_r =) inserts the result of an expression at the cursor
function! Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc


inoremap jk <esc>

inoremap <C-u> <esc>mzgUiw`za
" Panic Button
nnoremap <f9> mzggg?G`z
nnoremap <cr> o<esc>

" leader mappings
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprev<cr>
nnoremap <leader>h :hide<cr>
nnoremap <leader>w :set wrap!<cr>
nnoremap <leader>f :FZF<cr>
nnoremap <leader>ln :set number! relativenumber!<cr>
nnoremap <leader>us :w<cr>:UltiSnipsEdit<cr>


" layout mappings
set splitbelow splitright

nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" change vertical <-> horizontal
map <leader>th <C-w>t<C-w>H
map <leader>tk <C-w>t<C-w>K
map <leader>tt :vnew term://zsh<cr>
noremap <leader>vs :vsplit<cr>
noremap <leader>sp :split<cr>

" set fillchars=vert:\ 



" operator mappings
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>

let jumplabel = "<++>"

" fast vimrc
nnoremap <leader>ev :vsplit ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>


" language checking
noremap <F6> :setlocal spell! spelllang=en_us<CR>
noremap <F7> :setlocal spell! spelllang=de_de<CR>

" latex compile shortcut
noremap <F8> :!pdflatex %<CR>

iabbrev udn und

" end keymappings }}}


" File specific mappings/abbreviations {{{

augroup filetype_ocaml
  au!
  au FileType ocaml setlocal commentstring=(\*\ %s\ \*) expandtab shiftwidth=4
augroup END

augroup filetype_dotfiles
  au!
  au FileType vim setlocal foldmethod=marker expandtab shiftwidth=4
  au BufWritePost ~/.Xresources !xrdb %
  au BufWritePost ~/.xbindkeysrc !xbindkeys
augroup END

augroup latex
  au!
  au FileType tex setlocal expandtab shiftwidth=2
augroup END

" }}}
