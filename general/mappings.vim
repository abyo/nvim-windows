" =================================================================================== "
"  _   .-')      ('-.      _ (`-.    _ (`-.              .-') _              .-')    
" ( '.( OO )_   ( OO ).-. ( (OO  )  ( (OO  )            ( OO ) )            ( OO ).  
"  ,--.   ,--.) / . --. /_.`     \ _.`     \ ,-.-') ,--./ ,--,'  ,----.    (_)---\_) 
"  |   `.'   |  | \-.  \(__...--''(__...--'' |  |OO)|   \ |  |\ '  .-./-') /    _ |  
"  |         |.-'-'  |  ||  /  | | |  /  | | |  |  \|    \|  | )|  |_( O- )\  :` `.  
"  |  |'.'|  | \| |_.'  ||  |_.' | |  |_.' | |  |(_/|  .     |/ |  | .--, \ '..`''.) 
"  |  |   |  |  |  .-.  ||  .___.' |  .___.',|  |_.'|  |\    | (|  | '. (_/.-._)   \ 
"  |  |   |  |  |  | |  ||  |      |  |    (_|  |   |  | \   |  |  '--'  | \       / 
"  `--'   `--'  `--' `--'`--'      `--'      `--'   `--'  `--'   `------'   `-----'  
" =================================================================================== "

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

nnoremap <leader>b :Explore<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-Q> :wq!<CR>
nnoremap <C-w> :bd!<CR>
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Fzf
map <leader>p :Files<CR>
map <leader>f :Rg<CR>
nnoremap <C-f> :BLines<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-j> :terminal<CR>

" Leave terminal mode
tnoremap <Esc> <C-\><C-n>

" Sneak
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

" Wrap mode
nnoremap <Leader>ws :SoftWrapMode<CR>
nnoremap <Leader>wh :HardWrapMode<CR>
nnoremap <Leader>wt :ToggleWrapMode<CR>
