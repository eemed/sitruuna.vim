" sitruuna
" A dark and freshly yellowish color scheme for vim

" Setup{{{
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="sitruuna"
" }}}

" Colors {{{
let s:col = {}
let s:col.plain       = ['#f1f1f1', 255]
let s:col.lemon       = ['#FAC03B', 220]
let s:col.darker      = ['#101010', 0]
let s:col.black       = ['#161616', 233]
let s:col.gray1       = ['#1D2021', 236]
let s:col.gray2       = ['#2D3032', 238]
let s:col.comment     = ['#4c5356', 244]
let s:col.selection   = ['#A89984', 245]
let s:col.orange      = ['#FB543F', 202]
let s:col.cyan        = ['#20b2aa', 37]
let s:col.blue        = ['#54a0ff', 69]
let s:col.fresh_green = ['#2ecc71', 78]
let s:col.green       = ['#95C085', 77]
let s:col.magenta     = ['#ca70d6', 164]
let s:col.red         = ['#e74c3c', 196]
let s:col.none        = ['NONE', 'NONE']
let s:col.blonde      = ['#d3d6a9', 230]
let s:col.brown_light = ['#ad9c91', 230]
let s:col.brown       = ['#8e7f76', 230]

" #1D2021
" #FB543F
" #95C085
" #FAC03B
" #0D6678
" #8F4673
" #8BA59B
" #A89984
" #665C54
" #FB543F
" #95C085
" #FAC03B
" #0D6678
" #8F4673
" #8BA59B
" #FDF4C1
" }}}

" Highlighting Function from https://github.com/sjl/badwolf {{{
function! s:HL(group, fg, ...)
    " Arguments: group, guifg, guibg, gui, guisp

    let histring = 'hi ' . a:group . ' '

    if strlen(a:fg)
        if a:fg == 'fg'
            let histring .= 'guifg=fg ctermfg=fg '
        else
            let c = get(s:col, a:fg)
            let histring .= 'guifg=' . c[0] . ' ctermfg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 1 && strlen(a:1)
        if a:1 == 'bg'
            let histring .= 'guibg=bg ctermbg=bg '
        else
            let c = get(s:col, a:1)
            let histring .= 'guibg=' . c[0] . ' ctermbg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 2 && strlen(a:2)
        let histring .= 'gui=' . a:2 . ' cterm=' . a:2 . ' '
    endif

    if a:0 >= 3 && strlen(a:3)
        let c = get(s:col, a:3)
        let histring .= 'guisp=' . c[0] . ' '
    endif

    " echom histring

    execute histring
endfunction
" }}}

" highlights {{{
call s:HL('Normal'       , 'plain'        , 'none')
call s:HL('NonText'      , 'red'        , 'black')
call s:HL('Comment'      , 'comment'      , 'none')
call s:HL('String'       , 'fresh_green', 'none')
call s:HL('CursorLine'   , ''             , 'gray1')
call s:HL('ColorColumn'  , ''             , 'black')
call s:HL('StatusLine'   , 'gray2'        , 'plain')
call s:HL('StatusLineNC' , 'gray1'        , 'comment')
call s:HL('Visual'       , 'lemon'        , 'comment')
call s:HL('VisualNOS'    , 'plain'        , 'black')
call s:HL('FoldColumn'   , 'black'        , 'comment')
call s:HL('Folded'       , 'comment'      , 'black')
call s:HL('MatchParen'   , 'orange'        , 'none' , 'bold')

" Searching
call s:HL('IncSearch'    , 'lemon'        , 'black')
call s:HL('Search', 'lemon', 'black')
call s:HL('Substitute', 'lemon', 'black', 'bold')

" Usual highlighting
call s:HL('Keyword',     'lemon', 'none', 'bold')
call s:HL('Conditional', 'lemon', 'none', 'bold')
call s:HL('Label',       'lemon', 'none', 'bold')
call s:HL('Repeat',      'lemon', 'none', 'bold')
call s:HL('Statement', 'lemon', 'none', 'bold')

call s:HL('Delimiter',   'none', 'none')

call s:HL('SpecialKey', 'orange', 'none')
call s:HL('Special', 'blonde', 'none')

call s:HL('PreProc',   'blue', 'none')
call s:HL('Macro',     'blue', 'none')
call s:HL('Define',    'blue', 'none')
call s:HL('PreCondit', 'blue', 'none')
call s:HL('Include', 'blue', 'none')

call s:HL('Constant', 'magenta', 'none')
call s:HL('Boolean', 'magenta', 'none')
call s:HL('Character', 'magenta', 'none')
call s:HL('Number', 'magenta', 'none')
call s:HL('Float', 'magenta', 'none')

call s:HL('Exception', 'magenta', 'none')

call s:HL('Error', 'red', 'none')

call s:HL('Identifier', 'brown_light', 'none')
call s:HL('Function', 'brown_light', 'none')
call s:HL('Operator', 'lemon', 'none', 'bold')

call s:HL('Todo', 'black', 'cyan')
call s:HL('Type', 'cyan')

call s:HL('Title', 'lemon', 'none', 'bold')
call s:HL('LineNr', 'gray2', 'darker')
call s:HL('CursorLineNr', 'orange', 'darker')
call s:HL('VertSplit', 'gray1', 'gray1')
call s:HL('SignColumn', 'gray2', 'darker')
"
call s:HL('Conceal', 'red', 'none')
" call s:HL('Cursor')
" call s:HL('CursorColumn')
" call s:HL('CursorLine')
call s:HL('DiffAdd', 'fresh_green', 'none')
call s:HL('DiffAdded', 'fresh_green', 'none')
call s:HL('DiffChange', 'lemon', 'none')
call s:HL('DiffDelete', 'red', 'none')
call s:HL('DiffRemoved', 'red', 'none')
call s:HL('DiffText', 'blue', 'none')

call s:HL('Directory', 'lemon', 'none')
call s:HL('EndOfBuffer', 'gray2')
call s:HL('ErrorMsg', 'red', 'none')
call s:HL('ModeMsg', 'orange', 'none')
call s:HL('MoreMsg', 'blonde', 'none')
call s:HL('Pmenu', 'plain', 'gray1')
call s:HL('PmenuSbar', 'gray1', 'gray1')
call s:HL('PmenuSel', 'black', 'lemon')
call s:HL('PmenuThumb', 'blue')
" call s:HL('Question')
call s:HL('SpellBad', 'red', 'none')
" call s:HL('SpellCap', 'lemon')
" call s:HL('SpellLocal', 'lemon')
" call s:HL('SpellRare', 'lemon')
call s:HL('TabLine', 'plain', 'gray1', 'none')
call s:HL('TabLineFill', 'plain', 'gray1', 'none')
call s:HL('TabLineSel', 'black', 'lemon', 'bold')
call s:HL('WarningMsg', 'lemon', 'none')
call s:HL('WildMenu', 'plain', 'black')
" call s:HL('Ignore')
call s:HL('Underlined', 'blonde', 'none')
" call s:HL('CursorIM')
" call s:HL('ToolbarLine')
" call s:HL('ToolbarButton')
"
" call s:HL('pythonBuiltin',     'dress')
" call s:HL('pythonBuiltinObj',  'dress')
" call s:HL('pythonBuiltinFunc', 'dress')
" call s:HL('pythonEscape',      'dress')
" call s:HL('pythonException',   'lime', '', 'bold')
" call s:HL('pythonExceptions',  'lime', '', 'none')
" call s:HL('pythonPrecondit',   'lime', '', 'none')
" call s:HL('pythonDecorator',   'taffy', '', 'none')
call s:HL('pythonRun',         'blonde', '', 'bold')
" call s:HL('pythonCoding',      'gravel', '', 'bold')
" }}}
