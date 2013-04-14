set background=dark

hi clear

if exists("syntax_on")
   syntax reset
endif

let colors_name = "mlessnau_dark"

" ### Global ##################################################################
hi Normal                     ctermfg=15  ctermbg=232
hi NonText                    ctermfg=236 ctermbg=232
hi Error                      ctermfg=15  ctermbg=9   cterm=bold

" ### Status Line #############################################################
hi StatusLine                 ctermfg=0   ctermbg=15  cterm=bold
hi StatusLineNC               ctermfg=0   ctermbg=238 cterm=none
hi ModeMsg                    ctermfg=0   ctermbg=231 cterm=bold
hi MoreMsg                    ctermfg=0   ctermbg=231 cterm=bold
hi Question                   ctermfg=0   ctermbg=231 cterm=bold

" ### Search & Selection ######################################################
hi IncSearch                  ctermfg=0   ctermbg=214
hi Search                     ctermfg=0   ctermbg=214
hi Visual                     ctermfg=0   ctermbg=231

" ### Cursor ##################################################################
hi lCursor                    ctermfg=15  ctermbg=232
hi Cursor                     ctermfg=15
hi CursorColumn                           ctermbg=233
hi CursorIM                   ctermfg=15
hi CursorLine                             ctermbg=233 cterm=none

" ### Line/Column Helpers & Panes #############################################
hi ColorColumn                            ctermbg=0
hi CursorLineNr               ctermfg=15  ctermbg=0
hi LineNr                     ctermfg=235 ctermbg=0
hi VertSplit                  ctermfg=0   ctermbg=0

" ### Directory Listing #######################################################
hi Directory                  ctermfg=117

" ### Specials ################################################################
hi Todo                       ctermfg=15  ctermbg=201
hi Title                      ctermfg=15
hi Special                    ctermfg=9               cterm=bold
hi Operator                   ctermfg=15
hi Delimiter                  ctermfg=15
hi SpecialKey                 ctermfg=238

" ### Syntax Elements #########################################################
hi String                     ctermfg=120
hi Constant                   ctermfg=117
hi Number                     ctermfg=117
hi Statement                  ctermfg=208             cterm=bold
hi Function                   ctermfg=214
hi PreProc                    ctermfg=207             cterm=bold
hi Comment                    ctermfg=240             cterm=none
hi SpecialComment             ctermfg=240
hi Type                       ctermfg=208             cterm=bold
hi Error                      ctermfg=15  ctermbg=9
hi Identifier                 ctermfg=15              cterm=bold
"hi Label                      ctermfg=9
hi Keyword                    ctermfg=208

" ### Messages ################################################################
hi ErrorMsg                   ctermfg=15  ctermbg=9   cterm=bold
hi WarningMsg                 ctermfg=196

" ### Doxygen Related (C, C++, Java) ##########################################
hi doxygenSpecial             ctermfg=244 ctermbg=0   cterm=bold
hi link doxygenBrief                Comment
hi link doxygenParam                doxygenSpecial
hi link doxygenParamName            Comment
hi link doxygenSpecialMultilineDesc Comment

" ### Python Related ##########################################################
"hi pythonCoding
"hi pythonRun
"hi pythonBuiltinObj
"hi pythonBuiltinFunc
"hi pythonException
"hi pythonExClass
"hi pythonSpaceError
"hi pythonDocTest
"hi pythonDocTest2
"hi pythonFunction
"hi pythonClass

" ### HTML Related ############################################################
hi htmlArg                    ctermfg=214             cterm=bold
hi htmlTag                    ctermfg=208
hi htmlTagName                ctermfg=208             cterm=bold
hi htmlSpecialTag             ctermfg=208
hi htmlSpecialTagName         ctermfg=208             cterm=bold
hi htmlEndTag                 ctermfg=208
hi htmlBold                                           cterm=bold
hi htmlBoldItalic                                     cterm=bold,italic
hi htmlBoldUnderline                                  cterm=underline
hi htmlBoldUnderlineItalic                            cterm=bold,underline,italic
hi htmlItalic                                         cterm=italic
hi htmlLink                   ctermfg=15
hi htmlUnderline                                      cterm=underline
hi htmlUnderlineItalic                                cterm=underline,italic

" ### Ruby Related ############################################################
hi rubyAccess                 ctermfg=9               cterm=bold
hi rubyBeginEnd               ctermfg=208             cterm=bold
hi rubyBlockParameter         ctermfg=117
hi rubyClass                  ctermfg=208             cterm=bold
hi rubyConditional            ctermfg=208             cterm=bold
hi rubyConstant               ctermfg=15              cterm=bold
hi rubyControl                ctermfg=208             cterm=bold
hi rubyDefine                 ctermfg=208             cterm=bold
hi rubyGlobalVariable         ctermfg=11              cterm=bold
hi rubyInstanceVariable       ctermfg=11
hi rubyInterpolationDelimiter ctermfg=207
hi rubyKeyword                ctermfg=208             cterm=bold
hi rubyString                 ctermfg=120
hi rubyStringDelimiter        ctermfg=120
hi rubySymbol                 ctermfg=117
hi rubyRegexp                 ctermfg=207
hi rubyRegexpDelimiter        ctermfg=207
hi rubyRegexpSpecial          ctermfg=207
hi rubyInclude                ctermfg=208             cterm=bold

" ### Vim Related #############################################################
hi vimCommand                 ctermfg=208             cterm=bold

" ### C/C++ Related ###########################################################
hi cConditional               ctermfg=208             cterm=bold
hi cppAccess                  ctermfg=9               cterm=bold

" ### PHP related #############################################################
hi phpClasses                 ctermfg=15              cterm=bold
hi phpDefine                  ctermfg=208             cterm=bold
hi phpFunctions               ctermfg=214             cterm=bold
hi phpVarSelector             ctermfg=228
hi phpIdentifier              ctermfg=228
hi phpSpecialFunction         ctermfg=214             cterm=bold
hi phpAssignByRef             ctermfg=15
hi phpMemberSelector          ctermfg=15
hi phpComparison              ctermfg=15
hi phpSCKeyword               ctermfg=9               cterm=bold
hi phpDocTags                 ctermfg=244             cterm=bold
hi phpDocParam                ctermfg=244             cterm=bold

" ### JavaScript Related ######################################################
hi javaScriptFunction         ctermfg=208             cterm=bold
hi javaScriptLabel            ctermfg=117             cterm=none
hi javaScriptGlobalObjects    ctermfg=15              cterm=bold
hi javaScriptDocTags          ctermfg=244             cterm=bold

" ### Pmenu ###################################################################
hi Pmenu                      ctermfg=201 ctermbg=0   cterm=bold
hi PmenuSel                   ctermfg=15  ctermbg=201 cterm=bold

" ------------------------------

" hi DiffAdd                  ctermfg=15  ctermbg=233
" hi DiffChange               ctermfg=15  ctermbg=233
" hi DiffDelete               ctermfg=15  ctermbg=233
" hi DiffText                 ctermfg=15  ctermbg=233
" hi FoldColumn               ctermfg=15  ctermbg=233
" hi Folded                   ctermfg=15  ctermbg=233
" hi Ignore                   ctermfg=15  ctermbg=233
" hi WildMenu                 ctermfg=15  ctermbg=233
