set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "mlessnau_white"

let s:bg      = "15"  " Background (default)
let s:fg      = "0"   " Foreground (default)
let s:kw1     = "19"  " Keyword 1
let s:kw2     = "19"  " Keyword 2
let s:string  = "28"  " String
let s:fn      = "0"   " Function
let s:phpVar  = "130" " PHP Variable
let s:error   = "9"   " Error

let s:green1  = "64"
let s:grey1   = "0"
let s:grey3   = "235"
let s:grey4   = "238"
let s:grey5   = "241"
let s:grey6   = "244"
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
call HiColor("ColorColumn",                "",        s:grey1,   "")
call HiColor("CursorLineNr",               s:fg,      s:grey1,   "")
call HiColor("LineNr",                     s:grey5,   s:grey1,   "")
call HiColor("VertSplit",                  s:grey1,   s:grey1,   "")

" ### Directory Listing #######################################################
call HiColor("Directory",                  s:kw2,     "",        "")

" ### Specials ######################## ########################################
call HiColor("Todo",                       s:fg,      s:pink1,   "")
call HiColor("Title",                      s:fg,      "",        "")
call HiColor("Special",                    s:kw1,     "",        "bold")
call HiColor("Operator",                   s:fg,      "",        "")
call HiColor("Delimiter",                  s:fg,      "",        "")
call HiColor("SpecialKey",                 s:grey5,   "",        "")

" ### Syntax Elements #########################################################
call HiColor("String",                     s:string,  "",       "")
call HiColor("Constant",                   s:kw2,     "",       "")
call HiColor("Number",                     s:kw2,     "",       "")
call HiColor("Statement",                  s:kw1,     "",       "bold")
call HiColor("Function",                   s:fn,      "",       "")
call HiColor("PreProc",                    s:pink2,   "",       "bold")
call HiColor("Comment",                    s:grey6,   "",       "none")
call HiColor("SpecialComment",             s:grey6,   "",       "")
call HiColor("Type",                       s:kw1,     "",       "bold")
call HiColor("Error",                      s:fg,      s:error,  "")
call HiColor("Identifier",                 s:fg,      "",       "bold")
call HiColor("Keyword",                    s:kw1,     "",       "")
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
call HiColor("htmlTag",                    s:kw1,     "",       "")
call HiColor("htmlTagName",                s:kw1,     "",       "bold")
call HiColor("htmlSpecialTag",             s:kw1,     "",       "")
call HiColor("htmlSpecialTagName",         s:kw1,     "",       "bold")
call HiColor("htmlEndTag",                 s:kw1,     "",       "")
call HiColor("htmlBold",                   "",        "",       "bold")
call HiColor("htmlBoldItalic",             "",        "",       "bold,italic")
call HiColor("htmlBoldUnderline",          "",        "",       "underline")
call HiColor("htmlBoldUnderlineItalic",    "",        "",       "bold,underline,italic")
call HiColor("htmlItalic",                 "",        "",       "italic")
call HiColor("htmlLink",                   s:fg,      "",       "")
call HiColor("htmlUnderline",              "",        "",       "underline")
call HiColor("htmlUnderlineItalic",        "",        "",       "underline,italic")

" ### Ruby Related ############################################################
call HiColor("rubyAccess",                 s:kw1,     "",       "bold")
call HiColor("rubyBeginEnd",               s:kw1,     "",       "bold")
call HiColor("rubyBlockParameter",         s:kw2,     "",       "")
call HiColor("rubyClass",                  s:kw1,     "",       "bold")
call HiColor("rubyConditional",            s:kw1,     "",       "bold")
call HiColor("rubyConstant",               s:fg,      "",       "bold")
call HiColor("rubyControl",                s:kw1,     "",       "bold")
call HiColor("rubyDefine",                 s:kw1,     "",       "bold")
call HiColor("rubyGlobalVariable",         s:yellow,  "",       "bold")
call HiColor("rubyInstanceVariable",       s:yellow,  "",       "")
call HiColor("rubyInterpolationDelimiter", s:pink2,   "",       "")
call HiColor("rubyKeyword",                s:kw1,     "",       "bold")
call HiColor("rubyString",                 s:string,  "",       "")
call HiColor("rubyStringDelimiter",        s:string,  "",       "")
call HiColor("rubySymbol",                 s:kw2,     "",       "")
call HiColor("rubyRegexp",                 s:pink2,   "",       "")
call HiColor("rubyRegexpDelimiter",        s:pink2,   "",       "")
call HiColor("rubyRegexpSpecial",          s:pink2,   "",       "")
call HiColor("rubyInclude",                s:kw1,     "",       "bold")

" ### Vim Related #############################################################
call HiColor("vimCommand",                 s:kw1,     "",       "bold")

" ### C/C++ Related ###########################################################
call HiColor("cConditional",               s:kw1,     "",       "bold")
call HiColor("cppAccess",                  s:kw1,     "",       "bold")

" ### PHP related #############################################################
call HiColor("phpClasses",                 s:fg,      "",       "bold")
call HiColor("phpDefine",                  s:kw1,     "",       "bold")
call HiColor("phpFunctions",               s:fn,      "",       "")
call HiColor("phpVarSelector",             s:phpVar,  "",       "bold")
call HiColor("phpIdentifier",              s:phpVar,  "",       "bold")
call HiColor("phpMethodsVar",              s:fg,      "",       "")
call HiColor("phpSpecialFunction",         s:fn,      "",       "")
call HiColor("phpAssignByRef",             s:fg,      "",       "")
call HiColor("phpMemberSelector",          s:fg,      "",       "")
call HiColor("phpComparison",              s:fg,      "",       "")
call HiColor("phpSCKeyword",               s:kw1,     "",       "bold")
call HiColor("phpDocTags",                 s:grey7,   "",       "bold")
call HiColor("phpDocParam",                s:grey7,   "",       "bold")

" ### JavaScript Related ######################################################
call HiColor("javaScript",                 s:fg,      "",       "")
call HiColor("javaScriptFunction",         s:kw1,     "",       "bold")
call HiColor("javaScriptLabel",            s:kw2,     "",       "none")
call HiColor("javaScriptGlobalObjects",    s:fg,      "",       "bold")
call HiColor("javaScriptDocTags",          s:grey7,   "",       "bold")
call HiColor("javaScriptOperator",         s:kw1,     "",       "bold")
call HiColor("javaScriptRegexpString",     s:pink2,   "",       "")

" ### Pmenu ###################################################################
call HiColor("Pmenu",                      s:pink1,   s:grey1,  "bold")
call HiColor("PmenuSel",                   s:fg,      s:pink1,  "bold")

" ### NERDTree ################################################################
call HiColor("NERDTreeCWD",                s:fn,      "",       "none")
call HiColor("NERDTreeRO",                 s:kw1,     "",       "")
call HiColor("NERDTreeFlag",               s:fg,      "",       "")

" ### Diff ####################################################################
call HiColor("DiffAdd",                    s:green1,  s:string, "")
call HiColor("DiffDelete",                 s:red1,    s:red3,   "")
call HiColor("DiffChange",                 "",        s:bg,     "")
"Ignore
"DiffText

