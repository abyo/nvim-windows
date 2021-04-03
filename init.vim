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

source $HOME/AppData/Local/nvim/plugins/plugins.vim
source $HOME/AppData/Local/nvim/general/settings.vim
source $HOME/AppData/Local/nvim/keys/mappings.vim
source $HOME/AppData/Local/nvim/plug-config/fzf.vim
source $HOME/AppData/Local/nvim/plug-config/project-start.vim

" ================ "
"   THEME CONFIG
" ================ "

if (has("autocmd") && !has("gui_running"))
augroup colorset
autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
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

