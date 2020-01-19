" Name:         galaxy
" Author:       jliu2179/cliuj
" Maintainer:   jliu2179/cliuj
" License:      MIT

highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'galaxy'
set background=dark

" Color palette
let s:clear         =  ['NONE', 'NONE']
let s:Red           =  ['9', '#ff0000']
let s:White         =  ['15', '#ffffff']
let s:DeepSkyBlue4  =  ['24', '#005f87']
let s:DeepSkyBlue3  =  ['32', '#0087d7']
let s:SteelBlue     =  ['67', '#5f87af']
let s:SteelBlue1    =  ['75', '#5fafff']
let s:SkyBlue1      =  ['117', '#87d7ff']
let s:HotPink3      =  ['132', '#af5f87']
let s:DeepPink3     =  ['161', '#d7005f']
let s:DeepPink2     =  ['199', '#ff005f']
let s:Grey3         =  ['232', '#080808']
let s:Grey11        =  ['234', '#1c1c1c']
let s:Grey27        =  ['238', '#444444']
let s:Grey78        =  ['251', '#c6c6c6']

" Text style 
let s:italic     =  'italic'
let s:bold       =  'bold'
let s:underline  =  'underline'
let s:none       =  'NONE'

" Helper function to set up highlight executions
function! s:highlight(group, fg, bg, style)
  exec  "highlight "  . a:group
    \ . " ctermfg="   . a:fg[0]
    \ . " ctermbg="   . a:bg[0]
    \ . " cterm="     . a:style
    \ . " guifg="     . a:fg[1]
    \ . " guibg="     . a:bg[1]
    \ . " gui="       . a:style
endfunction

" Change colors for operators and symbols no matter the filetype
function! s:operator_syntax()
  syntax match Brackets "[<>{}()\[\]]"
  syntax match Operators "[-+&|=!?&$^%]"
  syntax match Symbols "[~.,;:%^]"
  call s:highlight('Brackets',      s:SteelBlue1,     s:clear,    s:none)
  call s:highlight('Operators',     s:SteelBlue,      s:clear,    s:none)
  call s:highlight('Symbols',       s:Grey78,         s:clear,    s:none)
endfunction


" Syntax highlighting groups
"
" For reference on what each group does, please refer to this:
" vimdoc.sourceforge.net/htmldoc/syntax.html
"
call s:highlight('Comment',         s:Grey27,         s:clear,    s:italic)
call s:highlight('Constant',        s:SteelBlue1,     s:clear,    s:none)
call s:highlight('String',          s:DeepSkyBlue3,   s:clear,    s:italic)
call s:highlight('Character',       s:DeepPink3,      s:clear,    s:none)
call s:highlight('Number',          s:HotPink3,       s:clear,    s:none)
call s:highlight('Boolean',         s:HotPink3,       s:clear,    s:bold)
call s:highlight('Float',           s:HotPink3,       s:clear,    s:none)
call s:highlight('Identifier',      s:DeepSkyBlue4,   s:clear,    s:none)
call s:highlight('Function',        s:DeepSkyBlue4,   s:clear,    s:bold)
call s:highlight('Statement',       s:DeepPink3,      s:clear,    s:none)
call s:highlight('Conditional',     s:DeepPink3,      s:clear,    s:bold)
call s:highlight('Repeat',          s:DeepPink3,      s:clear,    s:bold)
call s:highlight('Label',           s:DeepPink2,      s:clear,    s:bold)
call s:highlight('Operator',        s:DeepPink2,      s:clear,    s:bold)
call s:highlight('Keyword',         s:DeepPink2,      s:clear,    s:bold)
call s:highlight('Exception',       s:DeepPink2,      s:clear,    s:bold)
call s:highlight('PreProc',         s:SkyBlue1,       s:clear,    s:none)
call s:highlight('Include',         s:Grey78,         s:clear,    s:none)
call s:highlight('Define',          s:DeepSkyBlue3,   s:clear,    s:none)
call s:highlight('Macro',           s:DeepSkyBlue3,   s:clear,    s:none)
call s:highlight('PreCondit',       s:Grey78,         s:clear,    s:none)
call s:highlight('Type',            s:DeepSkyBlue3,   s:clear,    s:bold)
call s:highlight('StorageClass',    s:DeepSkyBlue3,   s:clear,    s:bold)
call s:highlight('Structure',       s:DeepSkyBlue3,   s:clear,    s:bold)
call s:highlight('Typedef',         s:DeepSkyBlue3,   s:clear,    s:bold)
call s:highlight('Special',         s:Grey78,         s:clear,    s:none)
call s:highlight('SpecialChar',     s:Grey78,         s:clear,    s:none)
call s:highlight('Tag',             s:Grey78,         s:clear,    s:none)
call s:highlight('Delimiter',       s:Grey78,         s:clear,    s:none)
call s:highlight('SpecialComment',  s:HotPink3,       s:clear,    s:none)
call s:highlight('Debug',           s:Grey78,         s:clear,    s:none)
call s:highlight('Underlined',      s:White,          s:clear,    s:bold)
call s:highlight('Ignore',          s:Grey78,         s:clear,    s:none)
call s:highlight('Error',           s:Red,            s:clear,    s:bold)
call s:highlight('Todo',            s:Grey78,         s:clear,    s:bold)

" Add the extra operator highlights
autocmd Syntax * call <SID>operator_syntax()

" Interface highlighting
call s:highlight('Normal',          s:SkyBlue1,       s:Grey3,    s:none)
call s:highlight('Visual',          s:clear,          s:Grey11,   s:none)
call s:highlight('Cursor',          s:White,          s:White,    s:none)
call s:highlight('LineNr',          s:DeepSkyBlue4,   s:clear,    s:none)
