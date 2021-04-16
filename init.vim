" ======================================= "
"               .-') _         .-') _    
"              ( OO ) )       (  OO) )   
"   ,-.-') ,--./ ,--,' ,-.-') /     '._  
"   |  |OO)|   \ |  |\ |  |OO)|'--...__) 
"   |  |  \|    \|  | )|  |  \'--.  .--' 
"   |  |(_/|  .     |/ |  |(_/   |  |    
"  ,|  |_.'|  |\    | ,|  |_.'   |  |    
" (_|  |   |  | \   |(_|  |      |  |    
"   `--'   `--'  `--'  `--'      `--'    
" ======================================= "

source $HOME/AppData/Local/nvim/plugins.vim
source $HOME/AppData/Local/nvim/general/settings.vim
source $HOME/AppData/Local/nvim/general/mappings.vim
source $HOME/AppData/Local/nvim/plug-config/fzf.vim
source $HOME/AppData/Local/nvim/plug-config/project-start.vim

luafile $HOME/AppData/Local/nvim/plug-config/compe.lua
luafile $HOME/AppData/Local/nvim/plug-config/lsp.lua

" ================ "
"   THEME CONFIG
" ================ "

if (has("autocmd") && !has("gui_running"))
augroup colorset
autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white })
  augroup END
endif

let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

syntax on
colorscheme onedark

if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'onedark'

" =============== "
"   AUTO FORMAT 
" =============== "

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

" ================ "
"    QUICKSCOPE
" ================ "

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline

let g:qs_max_chars=150

" ================ "
"      SNEAK
" ================ "

let g:sneak#label = 1
let g:sneak#use_ic_scs = 1
let g:sneak#s_next = 1

" ================ "
"  BETTER COMMENT
" ================ "

hi AlertBetterComments guifg=#dc143c gui=bold
hi QuestionBetterComments guifg=#0d66ff
hi TodoBetterComments guifg=#ff8c00
hi ParamBetterComments guifg=#dd80ff
hi ExampleBetterComments guifg=#c0fc6d
hi TypeBetterComments guifg=#dd80ff

