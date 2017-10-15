# vi-change-color-scheme

## Installation

Use your plugin manager of choice.

- [Pathogen](https://github.com/tpope/vim-pathogen)
  - `git clone https://github.com/minimalus/vi-change-color-scheme ~/.vim/bundle/vi-change-color-scheme`
- [Vundle](https://github.com/gmarik/vundle)
  - Add `Bundle 'https://github.com/minimalus/vi-change-color-scheme'` to .vimrc
  - Run `:BundleInstall`
- [NeoBundle](https://github.com/Shougo/neobundle.vim)
  - Add `NeoBundle 'https://github.com/minimalus/vi-change-color-scheme'` to .vimrc
  - Run `:NeoBundleInstall`
- [vim-plug](https://github.com/junegunn/vim-plug)
  - Add `Plug 'https://github.com/minimalus/vi-change-color-scheme'` to .vimrc
  - Run `:PlugInstall`

## Configuration
    " Set colorschemes for vi-change-color-scheme                                                                                                     
    let g:vi_change_color_scheme_list = ['badwolf', 'Benokai', 'molokai', '256-grayvim', 'molokai', 'neverland-darker', 'midnight', 'dracula']        
    let g:vi_change_color_scheme_default = 0                                                                                                          
    map <F8> :NextColorScheme<CR>                                                                                                                     
    map <F7> :PrevColorScheme<CR> 


## Todo
  - Write documentation
  - Add error handling
