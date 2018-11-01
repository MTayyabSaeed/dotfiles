set background=dark
if version > 580
 hi clear
 if exists("syntax_on")
  syntax reset
 endif
endif

set t_Co=256
let g:colors_name = "hightechbanana"

hi Cursor
   \ guifg=#262626
   \ guibg=#d7ffff
   \ guisp=#d7ffff
   \ cterm=NONE

hi CursorLineNr
   \ gui=bold
   \ guifg=#55baec

hi Ignore
   \ guifg=#60666b
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi VertSplit
   \ guifg=#444444
   \ guibg=#444444
   \ guisp=#444444
   \ cterm=NONE

hi NonText
   \ guifg=#949494
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Normal
   \ guifg=#e0e0e0
   \ guibg=NONE
   \ guisp=#26292c
   \ cterm=NONE

hi LineNr
   \ guifg=#1793d1
   \ guibg=NONE
   \ guisp=#2c2f31
   \ cterm=NONE

hi Comment
   \ guifg=#8f8f8f
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Todo
   \ guifg=#798188
   \ guibg=NONE
   \ guisp=NONE
   \ gui=bold
   \ cterm=bold

hi Function
   \ guifg=#55baec
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Identifier
   \ guifg=#96cdeb
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Type
   \ guifg=#5f87d7
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Directory
   \ guifg=#4a80ba
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Special
   \ guifg=#ff243a
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Float
   \ guifg=#96cdeb
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Character
   \ guifg=#96cdeb
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Number
   \ guifg=#96cdeb
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Boolean
   \ guifg=#96cdeb
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Constant
   \ guifg=#96cdeb
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi String
   \ guifg=#8f8f8f
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Statement
   \ guifg=#ffd75f
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi PreProc
   \ guifg=#fa9a4b
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Define
   \ guifg=#71c671
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Include
   \ guifg=#71c671
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Macro
   \ guifg=#71c671
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Exception
   \ guifg=#71c671
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Conditional
   \ guifg=#1793d1
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Repeat
   \ guifg=#ffaf5f
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi rubySymbol
   \ guifg=#b8d977
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi rubyStringDelimiter
   \ guifg=#448544
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi rubyInterpolationDelimiter
   \ guifg=#448544
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi rubyRegexp
   \ guifg=#ffb454
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi rubyRegexpDelimiter
   \ guifg=#ffb454
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi rubyExceptional
   \ guifg=#ffd75f
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi htmltagname
   \ guifg=#b7d877
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi htmltag
   \ guifg=#b7d877
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi htmlendtag
   \ guifg=#b7d877
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi csspseudoclassid
   \ guifg=#72aaca
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi cssclassname
   \ guifg=#72aaca
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi pythonBuiltin
   \ guifg=#5f87d7
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

"hi IncSearch -- no settings --

hi WildMenu
   \ guifg=#1c1c1c
   \ guibg=#ffff99
   \ guisp=#ffff99
   \ cterm=NONE

"hi SignColumn -- no settings --

hi SpecialComment
   \ guifg=#8f8f8f
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Typedef
   \ guifg=#72aaca
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Title
   \ guifg=#f8f8f8
   \ guibg=NONE
   \ guisp=NONE
   \ gui=bold
   \ cterm=bold

hi Folded
   \ guifg=#798188
   \ guibg=#26292c
   \ guisp=#26292c
   \ cterm=NONE

hi PreCondit
   \ guifg=#ffb454
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi StatusLineNC
   \ guifg=#b8b8b8
   \ guibg=#292c2f
   \ guisp=#292c2f
   \ cterm=NONE
"
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --

hi DiffText
   \ guifg=NONE
   \ guibg=#2E4052
   \ guisp=#2E4052
   \ gui=bold
   \ cterm=bold

hi ErrorMsg
   \ guifg=#f8f8f8
   \ guibg=#ad3725
   \ guisp=#ad3725
   \ cterm=NONE

hi Debug
   \ guifg=#f8f8f8
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi PMenuSbar
   \ guifg=#cdcecf
   \ guibg=#35393e
   \ guisp=#35393e
   \ cterm=NONE

hi SpecialChar
   \ guifg=#f8f8f8
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi StorageClass
   \ guifg=#f6f080
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi StatusLine
   \ guifg=#f8f8f8
   \ guibg=#292c2f
   \ guisp=#292c2f
   \ gui=bold
   \ cterm=bold

hi Label
   \ guifg=#f6f6f6
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE
"
"hi CTagsImport -- no settings --

hi PMenuSel
   \ guifg=#ffffff
   \ guibg=#3498DB
   \ guisp=#3498DB
   \ gui=bold
   \ cterm=bold

hi Search
   \ guifg=#16191c
   \ guibg=#fffebe
   \ guisp=#fffebe
   \ cterm=NONE
"
"hi CTagsGlobalVariable -- no settings --

hi Delimiter
   \ guifg=#f8f8f8
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE
"
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --

hi TabLineSel
   \ guifg=#ffd75f
   \ guibg=#1c1c1c
   \ guisp=#1c1c1c
   \ gui=bold
   \ cterm=bold

hi Operator
   \ guifg=#1794d1
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi CursorLine
   \ guifg=NONE
   \ guibg=#2d3033
   \ guisp=#2d3033
   \ cterm=NONE

hi ColorColumn
   \ guifg=NONE
   \ guibg=#2d3033
   \ guisp=#3b3e40
   \ cterm=NONE
"
"hi Union -- no settings --

hi TabLineFill
   \ guifg=NONE
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Question
   \ guifg=#a0a0a0
   \ guibg=#26292c
   \ guisp=#26292c
   \ cterm=NONE

hi WarningMsg
   \ guifg=#f8f8f8
   \ guibg=#aa2915
   \ guisp=#aa2915
   \ cterm=NONE

hi VisualNOS
   \ guifg=NONE
   \ guibg=#414549
   \ guisp=#414549
   \ cterm=NONE

hi DiffDelete
   \ guifg=#8F433D
   \ guibg=#8F433D
   \ guisp=#8F433D
   \ cterm=NONE

hi ModeMsg
   \ guifg=#a0a0a0
   \ guibg=#26292c
   \ guisp=#26292c
   \ cterm=NONE

hi CursorColumn
   \ guifg=NONE
   \ guibg=#3b3e40
   \ guisp=#3b3e40
   \ cterm=NONE

hi FoldColumn
   \ guifg=#798188
   \ guibg=#26292c
   \ guisp=#26292c
   \ cterm=NONE

hi PreProc
   \ guifg=#fa9a4b
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE
"
"hi EnumerationName -- no settings --

hi Visual
   \ guifg=NONE
   \ guibg=#414549
   \ guisp=#414549
   \ cterm=NONE
"
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --

hi Keyword
   \ guifg=#fa9a4b
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi DiffChange
   \ guifg=NONE
   \ guibg=#273645
   \ guisp=#273645
   \ cterm=NONE
"
"hi SpellLocal -- no settings --
"hi Error -- no settings --

hi PMenu
   \ guifg=#949ba1
   \ guibg=#303336
   \ guisp=#303336
   \ cterm=NONE

hi SpecialKey
   \ guifg=#7a8288
   \ guibg=#3b3e40
   \ guisp=#3b3e40
   \ cterm=NONE
"hi DefinedName -- no settings --

hi Tag
   \ guifg=#72aaca
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi PMenuThumb
   \ guifg=#82898f
   \ guibg=#4c4f54
   \ guisp=#4c4f54
   \ cterm=NONE

hi MatchParen
   \ guifg=#f2267f
   \ guibg=#fa9a4b
   \ guisp=#fa9a4b
   \ gui=underline
   \ cterm=underline
"
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi Clear -- no settings --

hi Structure
   \ guifg=#72aaca
   \ guibg=NONE
   \ guisp=NONE
   \ cterm=NONE

hi Underlined
   \ guifg=NONE
   \ guibg=NONE
   \ guisp=NONE
   \ gui=underline
   \ cterm=underline

hi DiffAdd
   \ guifg=#f8f8f8
   \ guibg=#487a1a
   \ guisp=#487a1a
   \ gui=bold
   \ cterm=bold

hi TabLine
   \ guifg=#8f8f8f
   \ guibg=#1e1e1e
   \ guisp=#e4e0d7
   \ cterm=NONE

hi IndentGuidesOdd
   \ guifg=#f6f6f6
   \ guibg=#2f3337
   \ guisp=#2f3337
   \ cterm=NONE

hi IndentGuidesEven
   \ guifg=#f8f8f8
   \ guibg=#383d41
   \ guisp=#383d41
   \ gui=bold
   \ cterm=NONE
