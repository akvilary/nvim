" DECLARE SETTINGS AND PLUGINS

" Load all vim settings and check plugin's list at every start
" Attention: order of source loading is important
source $HOME/.config/nvim/settings/plugins.vim
source $HOME/.config/nvim/settings/sets.vim
source $HOME/.config/nvim/settings/keymaps.vim


" All plugin's options in lua language there
lua require('modules')
