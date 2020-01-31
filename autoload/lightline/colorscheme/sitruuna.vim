" Colors {{{
let s:col            = {}
let s:col.lemon      = ['#FAC03B', 220]
let s:col.special    = ['#ffb354', 215]
let s:col.preproc    = ['#a29bfe', 147]
let s:col.function   = ['#a3db81', 117]
let s:col.foreground = ['#d1d1d1', 231]
let s:col.fg_alt     = ['#a1a1a1', 231]
let s:col.statusline = ['#34373a', 137]
let s:col.darker     = ['#131515', 232]
let s:col.background = ['#181a1b', 233]
let s:col.light_bg   = ['#1d2023', 236]
let s:col.lighter_bg = ['#242629', 238]
let s:col.comment    = ['#4c5356', 244]
let s:col.selection  = ['#2D3032', 238]
let s:col.string     = ['#37ad82', 36]
let s:col.type       = ['#7398dd', 75]
let s:col.constant   = ['#ca70d6', 170]
let s:col.error      = ['#c15959', 203]
let s:col.none       = ['NONE', 'NONE']
" }}}

function! s:Transform(fg, bg, gui)
    return [ a:fg[0], a:bg[0], a:fg[1], a:bg[1], a:gui ]
endfunction

" Lightline colors {{{
let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {} }

" Normal mode {{{
let s:p.normal.left = [
            \ s:Transform(s:col.foreground, s:col.statusline, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ ]

let s:p.normal.middle = [
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ ]

let s:p.normal.right = [
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ ]

" }}}

" Insert mode {{{
let s:p.insert.left = [
            \ s:Transform(s:col.background, s:col.lemon, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ ]

let s:p.insert.middle = [
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ ]

let s:p.insert.right = [
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ ]

" }}}

" Inactive {{{
let s:p.inactive.left = [
            \ s:Transform(s:col.fg_alt, s:col.darker, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.darker, 'bold'),
            \ ]

let s:p.inactive.middle = [
            \ s:Transform(s:col.fg_alt, s:col.darker, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.darker, 'bold'),
            \ ]

let s:p.inactive.right = [
            \ s:Transform(s:col.fg_alt, s:col.darker, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.darker, 'bold'),
            \ ]

" }}}

" Replace {{{
let s:p.replace.left = [
            \ s:Transform(s:col.lighter_bg, s:col.error, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ ]

let s:p.replace.middle = [
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ ]

let s:p.replace.right = [
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ ]

" }}}

" Visual {{{
let s:p.visual.left = [
            \ s:Transform(s:col.lighter_bg, s:col.constant, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ ]

let s:p.visual.middle = [
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ ]

let s:p.visual.right = [
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ ]
" }}}

" Tabline {{{
let s:p.tabline.left = [
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ ]

let s:p.tabline.middle = [
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ ]

let s:p.tabline.right = [
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ ]

let s:p.tabline.tabsel = [
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ s:Transform(s:col.fg_alt, s:col.lighter_bg, 'bold'),
            \ ]
" }}}

let g:lightline#colorscheme#sitruuna#palette = s:p
" }}}
