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
  Plug 'mhinz/vim-startify'
  Plug 'mhinz/vim-signify'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'
  Plug 'cespare/vim-toml'
call plug#end()
