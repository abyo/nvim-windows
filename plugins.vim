" ========================================================================= "
"    _ (`-.                                                .-') _   .-')    
"   ( (OO  )                                              ( OO ) ) ( OO ).  
"  _.`     \ ,--.     ,--. ,--.     ,----.     ,-.-') ,--./ ,--,' (_)---\_) 
" (__...--'' |  |.-') |  | |  |    '  .-./-')  |  |OO)|   \ |  |\ /    _ |  
"  |  /  | | |  | OO )|  | | .-')  |  |_( O- ) |  |  \|    \|  | )\  :` `.  
"  |  |_.' | |  |`-' ||  |_|( OO ) |  | .--, \ |  |(_/|  .     |/  '..`''.) 
"  |  .___.'(|  '---.'|  | | `-' /(|  | '. (_/,|  |_.'|  |\    |  .-._)   \ 
"  |  |      |      |('  '-'(_.-'  |  '--'  |(_|  |   |  | \   |  \       / 
"  `--'      `------'  `-----'      `------'   `--'   `--'  `--'   `-----'  
" ========================================================================= "

call plug#begin('~/AppData/Local/nvim/autoload/plugged')
	Plug 'jiangmiao/auto-pairs'
  Plug 'joshdick/onedark.vim'
  Plug 'justinmk/vim-sneak'
  Plug 'unblevable/quick-scope'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  Plug 'abyo/vim-better-comments'
  Plug 'mhinz/vim-startify'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'mhinz/vim-signify'
  Plug 'wakatime/vim-wakatime'
  Plug 'andrewferrier/vim-wrapping-softhard'
  Plug 'cespare/vim-toml'
  Plug 'tpope/vim-commentary'
call plug#end()
