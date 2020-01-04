" sitruuna.vim
" A fresh lemon inspired color scheme for vim

" Setup {{{
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

" Highlights {{{
call s:HL('Normal'         , 'plain'      , 'black')
call s:HL('NonText'        , 'red'        , 'black')
call s:HL('EndOfBuffer'    , 'gray2')
call s:HL('LineNr'         , 'gray2'      , 'darker')
call s:HL('FoldColumn'     , 'gray2'      , 'darker')
call s:HL('Folded'         , 'comment'    , 'none')
call s:HL('MatchParen'     , 'orange'     , 'none'    , 'bold')
call s:HL('SignColumn'     , 'gray2'      , 'darker')
call s:HL('Comment'        , 'comment'    , 'none')
call s:HL('Conceal'        , 'red'        , 'none')
call s:HL('Constant'       , 'magenta'    , 'none')
call s:HL('Error'          , 'red'        , 'none'    , 'none')
call s:HL('Identifier'     , 'none'       , 'none')
call s:HL('Ignore'         , 'comment'    , 'none')
call s:HL('PreProc'        , 'cyan'       , 'none')
call s:HL('Special'        , 'blonde'     , 'none')
call s:HL('Statement'      , 'lemon'      , 'none'    , 'bold')
call s:HL('String'         , 'fresh_green', 'none')
call s:HL('Todo'           , 'black'      , 'blue')
call s:HL('Type'           , 'blue'       , 'none')
call s:HL('Underlined'     , 'blonde'     , 'none')
call s:HL('Pmenu'          , 'plain'      , 'gray1')
call s:HL('PmenuSbar'      , 'gray1'      , 'gray1')
call s:HL('PmenuSel'       , 'black'      , 'lemon')
call s:HL('PmenuThumb'     , 'blue')
call s:HL('ErrorMsg'       , 'red'        , 'none'    , 'none')
call s:HL('ModeMsg'        , 'orange'     , 'none')
call s:HL('MoreMsg'        , 'blonde'     , 'none')
call s:HL('Question'       , 'plain'      , 'none')
call s:HL('WarningMsg'     , 'lemon'      , 'none')
call s:HL('TabLine'        , 'plain'      , 'gray1'   , 'none')
call s:HL('TabLineFill'    , 'plain'      , 'gray1'   , 'none')
call s:HL('TabLineSel'     , 'black'      , 'lemon'   , 'bold')
call s:HL('Cursor'         , ''           , 'plain')
call s:HL('CursorColumn'   , ''           , 'gray1')
call s:HL('CursorLineNr'   , 'orange'     , 'darker')
call s:HL('CursorLine'     , ''           , 'gray1'   , 'none')
call s:HL('StatusLine'     , 'gray2'      , 'plain')
call s:HL('StatusLineNC'   , 'gray1'      , 'comment')
call s:HL('Visual'         , 'lemon'      , 'comment')
call s:HL('VisualNOS'      , 'plain'      , 'black')
call s:HL('VertSplit'      , 'gray1'      , 'gray1')
call s:HL('WildMenu'       , 'plain'      , 'black')
call s:HL('Function'       , 'plain'      , 'none')
call s:HL('SpecialKey'     , 'orange'     , 'none')
call s:HL('Title'          , 'lemon'      , 'none'    , 'bold')
call s:HL('DiffAdd'        , 'fresh_green', 'none')
call s:HL('DiffChange'     , 'lemon'      , 'none')
call s:HL('DiffDelete'     , 'red'        , 'none')
call s:HL('DiffText'       , 'blue'       , 'none')
call s:HL('IncSearch'      , 'lemon'      , 'black')
call s:HL('Search'         , 'lemon'      , 'black')
call s:HL('Substitute'     , 'lemon'      , 'black')
call s:HL('Directory'      , 'lemon'      , 'none')
call s:HL('debugPC'        , 'red'        , 'none')
call s:HL('debugBreakpoint', 'red'        , 'none')
call s:HL('SpellBad'       , 'red'        , 'none'    , 'bold,underline')
call s:HL('SpellCap'       , 'red'        , 'none'    , 'bold,underline')
call s:HL('SpellLocal'     , 'orange'     , 'none'    , 'bold,underline')
call s:HL('SpellRare'      , 'orange'     , 'none'    , 'bold,underline')
call s:HL('ColorColumn'    , ''           , 'gray1')
call s:HL('Delimiter'      , 'none'       , 'none')

hi link Terminal Normal
hi link Number Constant
hi link CursorIM Cursor
hi link Boolean Constant
hi link Character Constant
hi link Conditional Statement
hi link Debug Special
hi link Define PreProc
hi link Exception Statement
hi link Float Number
hi link HelpCommand Statement
hi link HelpExample Statement
hi link Include PreProc
hi link Keyword Statement
hi link Label Statement
hi link Macro PreProc
hi link Number Constant
hi link Operator Statement
hi link PreCondit PreProc
hi link Repeat Statement
hi link SpecialChar Special
hi link SpecialComment Special
hi link StorageClass Statement
hi link Structure Statement
hi link Tag Special
hi link Terminal Normal
hi link Typedef Statement
hi link htmlEndTag htmlTagName
hi link htmlLink Function
hi link htmlSpecialTagName htmlTagName
hi link htmlTag htmlTagName
hi link htmlBold Normal
hi link htmlItalic Normal
hi link xmlTag Statement
hi link xmlTagName Statement
hi link xmlEndTag Statement
hi link markdownItalic Preproc
hi link asciidocQuotedEmphasized Preproc
hi link diffBDiffer WarningMsg
hi link diffCommon WarningMsg
hi link diffDiffer WarningMsg
hi link diffIdentical WarningMsg
hi link diffIsA WarningMsg
hi link diffNoEOL WarningMsg
hi link diffOnly WarningMsg
hi link diffRemoved DiffDelete
hi link diffAdded DiffAdd
hi link QuickFixLine Search
hi link ConId Type

" Yaml
hi link yamlBlockMappingKey Statement
hi link yamlFlowIndicator SpecialKey

" Markdown
hi link markdownCode String
hi link markdownHeadingDelimiter Type
hi link markdownLinkText Special

" CSS
hi link cssTagName SpecialKey
hi link cssClassName Statement
hi link cssDefinition Special
hi link cssProp Special

" Fugitive
hi link fugitiveHash Constant

" 'MaxMEllon/vim-jsx-pretty'
hi link jsxComponentName Statement
hi link jsxTagName Special
" }}}
