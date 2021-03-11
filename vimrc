set hidden
set nohlsearch
set nu rnu
set mouse+=a
set nowrap
set enc=utf-8
set scrolloff=4
set nobackup nowritebackup
set timeoutlen=500 ttimeoutlen=0
set shortmess+=c
set signcolumn=no
set tabstop=4 shiftwidth=4 expandtab
set cinoptions=l1
set listchars=tab:▸\ ,eol:¬
set noswapfile
set colorcolumn=80
set nrformats+=alpha

set undodir=~/.vim/undo-dir
set undofile


colorscheme good


call plug#begin('~/.vim/plugged')
" Plug 'tpope/vim-sleuth'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim'
Plug 'antoinemadec/coc-fzf'
call plug#end()

inoremap jk <esc>
inoremap kj <esc>

inoremap <C-v> <esc>:set paste<cr>"+p:set nopaste<cr>a

nnoremap <C-x> "+d
nnoremap <C-c> "+y
nnoremap <C-x><C-x> "+dd
nnoremap <C-c><C-c> "+yy
nnoremap <C-v><C-v> "+p

vnoremap <C-c> "+y
vnoremap <C-x> "+d
vnoremap <C-v> "+p

vnoremap C :norm i// <cr>
vnoremap V :norm 3x<cr>

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ "\<TAB>" 
inoremap <silent><expr> <c-@> coc#refresh()

nmap <silent> <space>E <Plug>(coc-diagnostic-prev)
nmap <silent> <space>e <Plug>(coc-diagnostic-next)

vmap <silent> F <Plug>(coc-format-selected)

nnoremap j gj
nnoremap k gk

nnoremap <space>w :echo 'stop'<cr>
nnoremap <space><space> <C-^>
nnoremap <space>ve :e ~/.config/nvim/init.vim<cr>
nnoremap <space>te :e ~/.config/nvim/colors/good.vim<cr>
nnoremap <space>f :Files<cr>
nnoremap <space>b :Buffers<cr>
nnoremap <space>d :GitFiles<cr>

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nmap <silent> <space>gd <Plug>(coc-definition)
nmap <silent> <space>gr <Plug>(coc-references)
nmap <silent> <space>gt <Plug>(coc-type-definition)
nmap <silent> <space>gi <Plug>(coc-implementation)
nmap <silent> <space>a <Plug>(coc-code-action)
nmap <silent> <space>t :call <SID>show_documentation()<CR>
nmap <silent> <space>r <Plug>(coc-rename)
nmap <space>a <Plug>(coc-codeaction-selected)
nnoremap <silent> <space>s :<C-u>CocList -I symbols<CR>

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

au! BufWritePost ~/.config/sxhkd/sxhkdrc silent !pkill -USR1 sxhkd
au! BufWritePost ~/.config/nvim/init.vim silent so %
au! BufWritePost ~/.Xresources silent !xrdb %
au! BufWritePost ~/.local/bar/* silent !bar once
au! BufWritePost *.tex silent !pdflatex %
au! BufWritePost ~/bin/bar silent !bar once
au! BufNewFile,BufRead *.ejs set filetype=html

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

nnoremap <F1> @q
nnoremap <F2> @w

inoremap тн <esc>
inoremap нт <esc>

nnoremap щ y
nnoremap Щ Y
nnoremap с i
nnoremap С I
nnoremap ь a
nnoremap ѝ A
nnoremap я s
nnoremap Я S
nnoremap д o
nnoremap Д O
nnoremap а d
nnoremap А D

nnoremap г h
nnoremap т j
nnoremap н k
nnoremap в l
nnoremap у w
nnoremap У W
nnoremap е e
nnoremap Е E
