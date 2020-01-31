# sitruuna.vim

A fresh lemon inspired colorscheme for neovim

![2020-01-24-221656_845x704_scrot](https://user-images.githubusercontent.com/30186515/73100958-590ba100-3ef7-11ea-8c95-daad105a9b90.png)

## Installation

### vim-plug

Add the following plugin to your `init.vim`:
```vim
Plug 'eemed/sitruuna.vim'
```

and execute `PlugInstall`.

## Lightline

To use the lightline theme set it up in your `init.vim`:
```vim
let g:lightline = {
            \ 'colorscheme': 'sitruuna',
            \ }
```

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
|    lemon    |  #FAC03B  |
|   special   |  #ffb354  |
|   preproc   |  #a29bfe  |
|  function   |  #a3db81  |
| foreground  |  #d1d1d1  |
|   fg\_alt   |  #a1a1a1  |
| statusline  |  #34373a  |
|   darker    |  #131515  |
| background  |  #181a1b  |
|  light\_bg  |  #1d2023  |
| lighter\_bg |  #242629  |
|   comment   |  #4c5356  |
|  selection  |  #2D3032  |
|   string    |  #37ad82  |
|    type     |  #7398dd  |
|  constant   |  #ca70d6  |
|    error    |  #c15959  |
