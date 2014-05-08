set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "mlessnau_white"

let s:bg      = "15"  " Background (default)
let s:fg      = "0"   " Foreground (default)
let s:kw      = "25"  " Keyword
let s:string  = "196" " String
let s:fn      = "0"   " Function
let s:phpVar  = "52"  " PHP Variable
let s:error   = "9"   " Error
let s:comment = "28"
let s:number  = "25"

let s:green1  = "64"
let s:grey1   = "0"
let s:grey2   = "248"
let s:grey3   = "252"
let s:grey4   = "238"
let s:grey5   = "241"
let s:grey7   = "247"
let s:pink1   = "201"
let s:pink2   = "207"
let s:red1    = "88"
let s:red3    = "173"
let s:yellow  = "11"

function HiColor(grp, fg, bg, style)
  let hiCommand = "hi " . a:grp
  if a:fg != ""
    let hiCommand = hiCommand . " ctermfg=" . a:fg
  endif
  if a:bg != ""
    let hiCommand = hiCommand . " ctermbg=" . a:bg
  endif
  if a:style != ""
    let hiCommand = hiCommand . " cterm=" . a:style
  endif
  exec hiCommand
endfunction

" ### Global ##################################################################
call HiColor("Normal",                     s:fg,      s:bg,      "")
call HiColor("NonText",                    s:grey4,   s:bg,      "")
call HiColor("Error",                      s:fg,      s:error,   "bold")

" ### Status Line & Wildmenu ##################################################
call HiColor("StatusLine",                 s:grey1,   s:fg,      "bold")
call HiColor("StatusLineNC",               s:grey1,   s:grey5,   "none")
call HiColor("ModeMsg",                    s:grey1,   s:fg,      "bold")
call HiColor("MoreMsg",                    s:grey1,   s:fg,      "bold")
call HiColor("Question",                   s:grey1,   s:fg,      "bold")
call HiColor("WildMenu",                   s:fg,      s:pink1,   "bold")
call HiColor("Folded",                     s:bg,      s:fg,      "")
call HiColor("FoldColumn",                 s:error,   s:grey1,   "")

" ### Search & Selection ######################################################
call HiColor("IncSearch",                  s:grey1,   s:fn,      "")
call HiColor("Search",                     s:grey1,   s:fn,      "")
call HiColor("Visual",                     s:grey1,   s:fg,      "")

" ### Cursor ##################################################################
call HiColor("lCursor",                    s:fg,      s:bg,      "")
call HiColor("Cursor",                     s:fg,      "",        "")
call HiColor("CursorColumn",               "",        s:grey3,   "")
call HiColor("CursorIM",                   s:fg,      "",        "")
call HiColor("CursorLine",                 "",        s:grey3,   "none")

" ### Line/Column Helpers & Panes #############################################
call HiColor("ColorColumn",                "",        s:grey2,   "")
call HiColor("CursorLineNr",               s:fg,      s:grey2,   "")
call HiColor("LineNr",                     s:bg,      s:grey2,   "")
call HiColor("VertSplit",                  s:grey2,   s:grey2,   "")

" ### Directory Listing #######################################################
call HiColor("Directory",                  s:kw,      "",        "")

" ### Specials ######################## ########################################
call HiColor("Todo",                       s:fg,      s:pink1,   "")
call HiColor("Title",                      s:fg,      "",        "")
call HiColor("Special",                    s:kw,      "",        "")
call HiColor("Operator",                   s:fg,      "",        "")
call HiColor("Delimiter",                  s:fg,      "",        "")
call HiColor("SpecialKey",                 s:grey5,   "",        "")

" ### Syntax Elements #########################################################
call HiColor("String",                     s:string,  "",       "")
call HiColor("Constant",                   s:kw,      "",       "")
call HiColor("Number",                     s:number,  "",       "")
call HiColor("Statement",                  s:kw,      "",       "")
call HiColor("Function",                   s:fn,      "",       "")
call HiColor("PreProc",                    s:pink2,   "",       "bold")
call HiColor("Comment",                    s:comment, "",       "none")
call HiColor("SpecialComment",             s:comment, "",       "")
call HiColor("Type",                       s:kw,      "",       "")
call HiColor("Error",                      s:fg,      s:error,  "")
call HiColor("Identifier",                 s:fg,      "",       "bold")
call HiColor("Keyword",                    s:kw,      "",       "")
"Label

" ### Messages ################################################################
call HiColor("ErrorMsg",                   s:fg,      s:error,  "bold")
call HiColor("WarningMsg",                 s:error,   "",       "")

" ### Doxygen Related (C, C++, Java) ##########################################
call HiColor("doxygenSpecial",             s:grey7,   s:grey1,  "bold")
hi link doxygenBrief                Comment
hi link doxygenParam                doxygenSpecial
hi link doxygenParamName            Comment
hi link doxygenSpecialMultilineDesc Comment

" ### Python Related ##########################################################
"pythonCoding
"pythonRun
"pythonBuiltinObj
"pythonBuiltinFunc
"pythonException
"pythonExClass
"pythonSpaceError
"pythonDocTest
"pythonDocTest2
"pythonFunction
"pythonClass

" ### HTML Related ############################################################
call HiColor("htmlArg",                    s:fn,      "",       "bold")
call HiColor("htmlTag",                    s:kw,      "",       "")
call HiColor("htmlTagName",                s:kw,      "",       "")
call HiColor("htmlSpecialTag",             s:kw,      "",       "")
call HiColor("htmlSpecialTagName",         s:kw,      "",       "")
call HiColor("htmlEndTag",                 s:kw,      "",       "")
call HiColor("htmlBold",                   "",        "",       "bold")
call HiColor("htmlBoldItalic",             "",        "",       "bold,italic")
call HiColor("htmlBoldUnderline",          "",        "",       "underline")
call HiColor("htmlBoldUnderlineItalic",    "",        "",       "bold,underline,italic")
call HiColor("htmlItalic",                 "",        "",       "italic")
call HiColor("htmlLink",                   s:fg,      "",       "")
call HiColor("htmlUnderline",              "",        "",       "underline")
call HiColor("htmlUnderlineItalic",        "",        "",       "underline,italic")

" ### Ruby Related ############################################################
call HiColor("rubyAccess",                 s:kw,      "",       "")
call HiColor("rubyBeginEnd",               s:kw,      "",       "")
call HiColor("rubyBlockParameter",         s:kw,      "",       "")
call HiColor("rubyClass",                  s:kw,      "",       "")
call HiColor("rubyConditional",            s:kw,      "",       "")
call HiColor("rubyConstant",               s:fg,      "",       "bold")
call HiColor("rubyControl",                s:kw,      "",       "")
call HiColor("rubyDefine",                 s:kw,      "",       "")
call HiColor("rubyGlobalVariable",         s:yellow,  "",       "bold")
call HiColor("rubyInstanceVariable",       s:yellow,  "",       "")
call HiColor("rubyInterpolationDelimiter", s:pink2,   "",       "")
call HiColor("rubyKeyword",                s:kw,      "",       "")
call HiColor("rubyString",                 s:string,  "",       "")
call HiColor("rubyStringDelimiter",        s:string,  "",       "")
call HiColor("rubySymbol",                 s:kw,      "",       "")
call HiColor("rubyRegexp",                 s:pink2,   "",       "")
call HiColor("rubyRegexpDelimiter",        s:pink2,   "",       "")
call HiColor("rubyRegexpSpecial",          s:pink2,   "",       "")
call HiColor("rubyInclude",                s:kw,      "",       "")

" ### Vim Related #############################################################
call HiColor("vimCommand",                 s:kw,      "",       "")

" ### C/C++ Related ###########################################################
call HiColor("cConditional",               s:kw,      "",       "")
call HiColor("cppAccess",                  s:kw,      "",       "")

" ### PHP related #############################################################
call HiColor("phpClasses",                 s:fg,      "",       "bold")
call HiColor("phpDefine",                  s:kw,      "",       "")
call HiColor("phpFunctions",               s:fn,      "",       "")
call HiColor("phpVarSelector",             s:phpVar,  "",       "")
call HiColor("phpIdentifier",              s:phpVar,  "",       "")
call HiColor("phpInclude",                 s:kw,      "",       "")
call HiColor("phpMethodsVar",              s:fg,      "",       "")
call HiColor("phpSpecialFunction",         s:fn,      "",       "")
call HiColor("phpAssignByRef",             s:fg,      "",       "")
call HiColor("phpMemberSelector",          s:fg,      "",       "")
call HiColor("phpComparison",              s:fg,      "",       "")
call HiColor("phpSCKeyword",               s:kw,      "",       "")
call HiColor("phpDocTags",                 s:comment, "",       "")
call HiColor("phpDocParam",                s:comment, "",       "")

" ### JavaScript Related ######################################################
call HiColor("javaScript",                 s:fg,      "",       "")
call HiColor("javaScriptFunction",         s:kw,      "",       "")
call HiColor("javaScriptLabel",            s:kw,      "",       "")
call HiColor("javaScriptGlobalObjects",    s:fg,      "",       "bold")
call HiColor("javaScriptDocTags",          s:grey7,   "",       "bold")
call HiColor("javaScriptOperator",         s:kw,      "",       "")
call HiColor("javaScriptRegexpString",     s:pink2,   "",       "")

" ### Pmenu ###################################################################
call HiColor("Pmenu",                      s:pink1,   s:grey1,  "bold")
call HiColor("PmenuSel",                   s:fg,      s:pink1,  "bold")

" ### NERDTree ################################################################
call HiColor("NERDTreeCWD",                s:fn,      "",       "none")
call HiColor("NERDTreeRO",                 s:kw,      "",       "")
call HiColor("NERDTreeFlag",               s:fg,      "",       "")

" ### Diff ####################################################################
call HiColor("DiffAdd",                    s:green1,  s:string, "")
call HiColor("DiffDelete",                 s:red1,    s:red3,   "")
call HiColor("DiffChange",                 "",        s:bg,     "")
"Ignore
"DiffText

