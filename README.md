# sitruuna.vim

A fresh lemon inspired colorscheme for neovim

![2020-01-24-125731_779x683_scrot](https://user-images.githubusercontent.com/30186515/73064177-466a7b00-3ea9-11ea-841e-b0dd47bfcc35.png)

## Installation

### vim-plug

Add the following plugin to your `init.vim`:
```
Plug 'eemed/sitruuna.vim'
```

and execute `PlugInstall`.

## Configuration

### g:sitruuna\_fzf

Determines whether [fzf](https://github.com/junegunn/fzf.vim) colors are set.
Can be set to `0` or `1`.

Default: `1` (on)

```vim
" Don't set fzf colors
let g:sitruuna_fzf = 0
```

## Colors


|    Usage    | color hex |
|     ---     |    ---    |
| foreground  |  #f1f1f1  |
|    lemon    |  #FAC03B  |
|   darker    |  #101010  |
| background  |  #161616  |
|  light\_bg  |  #1D2021  |
| lighter\_bg |  #2D3032  |
|   comment   |  #4c5356  |
|  selection  |  #2D3032  |
|   special   |  #ffb354  |
|   preproc   |  #a29bfe  |
|  function   |  #94d0ff  |
|   string    |  #26c281  |
|    type     |  #65a9ff  |
|  constant   |  #ca70d6  |
|    error    |  #FB543F  |
| statusline  |  #34373a  |
