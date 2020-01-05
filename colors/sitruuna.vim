" sitruuna.vim
" A fresh lemon inspired colorscheme for vim

" Setup {{{
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="sitruuna"
" }}}

" Colors {{{
let s:col              = {}
let s:col.foreground   = ['#f1f1f1', 255]
let s:col.lemon        = ['#FAC03B', 220]
let s:col.darker       = ['#101010', 0]
let s:col.background   = ['#161616', 233]
let s:col.light_bg     = ['#1D2021', 236]
let s:col.lighter_bg   = ['#2D3032', 238]
let s:col.comment      = ['#4c5356', 244]
let s:col.selection    = ['#4c5356', 245]
let s:col.special      = ['#FB543F', 202]
let s:col.preproc      = ['#54a0ff', 69]
let s:col.function     = ['#d3d6a9', 69]
let s:col.identifier   = ['#94d0ff', 69]
let s:col.string       = ['#2ecc71', 78]
let s:col.type         = ['#95C085', 77]
let s:col.constant     = ['#ca70d6', 164]
let s:col.error        = ['#e74c3c', 196]
let s:col.none         = ['NONE', 'NONE']
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
call s:HL('Normal'         , 'foreground' , 'background')
call s:HL('NonText'        , 'error'      , 'background')
call s:HL('EndOfBuffer'    , 'lighter_bg')
call s:HL('LineNr'         , 'lighter_bg' , 'darker')
call s:HL('FoldColumn'     , 'lighter_bg' , 'darker')
call s:HL('Folded'         , 'comment'    , 'none')
call s:HL('MatchParen'     , 'special'    , 'none'       , 'bold')
call s:HL('SignColumn'     , 'lighter_bg' , 'darker')
call s:HL('Comment'        , 'comment'    , 'none')
call s:HL('Conceal'        , 'error'      , 'none')
call s:HL('Constant'       , 'constant'   , 'none')
call s:HL('Error'          , 'error'      , 'none'       , 'none')
call s:HL('Identifier'     , 'identifier' , 'none')
call s:HL('Ignore'         , 'comment'    , 'none')
call s:HL('PreProc'        , 'preproc'    , 'none')
call s:HL('Special'        , 'special'    , 'none')
call s:HL('Statement'      , 'lemon'      , 'none'       , 'bold')
call s:HL('String'         , 'string'     , 'none')
call s:HL('Todo'           , 'background' , 'function')
call s:HL('Type'           , 'type'       , 'none'       , 'none')
call s:HL('Underlined'     , 'function'   , 'none')
call s:HL('Pmenu'          , 'foreground' , 'light_bg')
call s:HL('PmenuSbar'      , 'light_bg'   , 'light_bg')
call s:HL('PmenuSel'       , 'background' , 'lemon')
call s:HL('PmenuThumb'     , 'function')
call s:HL('ErrorMsg'       , 'error'      , 'none'       , 'none')
call s:HL('ModeMsg'        , 'special'    , 'none')
call s:HL('MoreMsg'        , 'function'   , 'none')
call s:HL('Question'       , 'foreground' , 'none')
call s:HL('WarningMsg'     , 'lemon'      , 'none')
call s:HL('TabLine'        , 'foreground' , 'light_bg'   , 'none')
call s:HL('TabLineFill'    , 'foreground' , 'light_bg'   , 'none')
call s:HL('TabLineSel'     , 'background' , 'lemon'      , 'bold')
call s:HL('Cursor'         , ''           , 'foreground')
call s:HL('CursorColumn'   , ''           , 'light_bg')
call s:HL('CursorLineNr'   , 'special'    , 'darker')
call s:HL('CursorLine'     , ''           , 'light_bg'   , 'none')
call s:HL('StatusLine'     , 'lighter_bg' , 'foreground')
call s:HL('StatusLineNC'   , 'light_bg'   , 'comment')
call s:HL('Visual'         , 'foreground' , 'selection')
call s:HL('VisualNOS'      , 'foreground' , 'background')
call s:HL('VertSplit'      , 'light_bg'   , 'light_bg')
call s:HL('WildMenu'       , 'foreground' , 'background')
call s:HL('Function'       , 'function'   , 'none'       , 'none')
call s:HL('SpecialKey'     , 'special'    , 'none')
call s:HL('Title'          , 'lemon'      , 'none'       , 'bold')
call s:HL('DiffAdd'        , 'string'     , 'none')
call s:HL('DiffChange'     , 'lemon'      , 'none')
call s:HL('DiffDelete'     , 'error'      , 'none')
call s:HL('DiffText'       , 'function'   , 'none')
call s:HL('Directory'      , 'lemon'      , 'none')
call s:HL('debugPC'        , 'error'      , 'none')
call s:HL('debugBreakpoint', 'error'      , 'none')
call s:HL('ColorColumn'    , ''           , 'light_bg')
call s:HL('Delimiter'      , 'none'       , 'none')

call s:HL('IncSearch'      , 'lemon'      , 'background', 'reverse,bold')
call s:HL('Search'         , 'lemon'      , 'background', 'reverse,bold')
call s:HL('Substitute'     , 'lemon'      , 'background', 'reverse,bold')
call s:HL('SpellBad'       , 'error'      , 'none'      , 'bold,underline')
call s:HL('SpellCap'       , 'error'      , 'none'      , 'bold,underline')
call s:HL('SpellLocal'     , 'special'    , 'none'      , 'bold,underline')
call s:HL('SpellRare'      , 'special'    , 'none'      , 'bold,underline')

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
hi link markdownCodeBlock String
hi link markdownHeadingDelimiter Type
hi link markdownLinkText Special
hi link markdownItalic Preproc

" CSS
hi link cssTagName SpecialKey
hi link cssClassName Statement
hi link cssDefinition Special
hi link cssProp Special

" Fugitive
hi link fugitiveHash Constant

" Python
hi link pythonBuiltin Constant

" 'MaxMEllon/vim-jsx-pretty'
hi link jsxComponentName Statement
hi link jsxTagName Special
" }}}
