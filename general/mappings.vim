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

nnoremap <C-s> :w<CR>
nnoremap <C-Q> :wq!<CR>
nnoremap <C-w> :bd<CR>
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

" Leave terminal mode
tnoremap <Esc> <C-\><C-n>

" LSP Config
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" Sneak
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;
