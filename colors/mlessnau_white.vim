
set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "mlessnau_white"

let s:cc       = "224" " Color column
let s:chl      = "255"    " Column highlight
let s:lhl      = "255"    " Line highlight
let s:bg       = "15"  " Background (default)
let s:fg       = "0"   " Foreground (default)
let s:kw       = "26"  " Keyword
let s:string   = "200" " String
let s:fn       = "0"   " Function
let s:phpVar1  = "28"  " PHP variable
let s:phpVar2  = "130" " PHP variable
let s:error    = "9"   " Error
let s:comment  = "250"
let s:number   = "196"
let s:searchBg = "201"

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
call HiColor("Normal",                     s:fg,      s:bg,       "")
call HiColor("NonText",                    s:grey3,   s:bg,       "")
call HiColor("Error",                      s:fg,      s:error,    "bold")

" ### Status Line & Wildmenu ##################################################
" call HiColor("StatusLine",                 s:bg,      s:kw,       "bold")
" call HiColor("StatusLineNC",               s:bg,      s:grey3,    "none")
call HiColor("ModeMsg",                    s:grey1,   s:fg,       "bold")
call HiColor("MoreMsg",                    s:grey1,   s:fg,       "bold")
call HiColor("Question",                   s:grey1,   s:fg,       "bold")
call HiColor("WildMenu",                   s:bg,      s:kw,       "bold")
call HiColor("Folded",                     s:bg,      s:fg,       "")
call HiColor("FoldColumn",                 s:error,   s:grey1,    "")

" ### Search & Selection ######################################################
call HiColor("IncSearch",                  s:bg,      s:searchBg, "")
call HiColor("Search",                     s:bg,      s:searchBg, "")
call HiColor("Visual",                     s:bg,      s:kw,       "")
call HiColor("MatchParen",                 s:number,  s:bg,       "")

" ### Cursor ##################################################################
call HiColor("lCursor",                    s:bg,      s:kw,       "")
call HiColor("Cursor",                     s:kw,      "",         "")
call HiColor("CursorColumn",               "",        s:chl,      "")
call HiColor("CursorIM",                   s:fg,      "",         "")
call HiColor("CursorLine",                 "",        s:lhl,      "none")

" ### Line/Column Helpers & Panes #############################################
call HiColor("ColorColumn",                "",        s:cc,       "")
call HiColor("CursorLineNr",               s:kw,      s:lhl,      "")
call HiColor("LineNr",                     s:bg,      s:grey3,    "")
call HiColor("VertSplit",                  s:grey3,   s:grey3,    "")

" ### Directory Listing #######################################################
call HiColor("Directory",                  s:kw,      "",         "")

" ### Specials ######################## ########################################
call HiColor("Todo",                       s:fg,      s:pink1,    "")
call HiColor("Title",                      s:fg,      "",         "")
call HiColor("Special",                    s:kw,      "",         "")
call HiColor("Operator",                   s:fg,      "",         "")
call HiColor("Delimiter",                  s:fg,      "",         "")
call HiColor("SpecialKey",                 s:grey5,   "",         "")

" ### Syntax Elements #########################################################
call HiColor("String",                     s:string,  "",         "")
call HiColor("Constant",                   s:number,  "",         "")
call HiColor("Number",                     s:number,  "",         "")
call HiColor("Statement",                  s:kw,      "",         "")
call HiColor("Function",                   s:fn,      "",         "")
call HiColor("PreProc",                    s:pink2,   "",         "bold")
call HiColor("Comment",                    s:comment, "",         "none")
call HiColor("SpecialComment",             s:comment, "",         "")
call HiColor("Type",                       s:kw,      "",         "")
call HiColor("Error",                      s:fg,      s:error,    "")
call HiColor("Identifier",                 s:fg,      "",         "bold")
call HiColor("Keyword",                    s:kw,      "",         "")
"Label

" ### Messages ################################################################
call HiColor("ErrorMsg",                   s:fg,      s:error,    "bold")
call HiColor("WarningMsg",                 s:error,   "",         "")

" ### Doxygen Related (C, C++, Java) ##########################################
call HiColor("doxygenSpecial",             s:grey7,   s:grey1,    "bold")
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
call HiColor("htmlArg",                    s:fg,      "",         "")
call HiColor("htmlBold",                   s:fg,      "",         "bold")
call HiColor("htmlBoldItalic",             "",        "",         "bold,italic")
call HiColor("htmlBoldUnderline",          "",        "",         "underline")
call HiColor("htmlBoldUnderlineItalic",    "",        "",         "bold,underline,italic")
call HiColor("htmlEndTag",                 s:kw,      "",         "none")
call HiColor("htmlItalic",                 "",        "",         "italic")
call HiColor("htmlLink",                   s:fg,      "",         "")
call HiColor("htmlSpecialChar",            s:number,  "",         "")
call HiColor("htmlSpecialTag",             s:kw,      "",         "")
call HiColor("htmlSpecialTagName",         s:kw,      "",         "")
call HiColor("htmlTag",                    s:kw,      "",         "")
call HiColor("htmlTagN",                   s:kw,      "",         "")
call HiColor("htmlTagName",                s:kw,      "",         "")
call HiColor("htmlUnderline",              "",        "",         "underline")
call HiColor("htmlUnderlineItalic",        "",        "",         "underline,italic")

" ### Ruby Related ############################################################
call HiColor("rubyAccess",                 s:kw,      "",         "")
call HiColor("rubyBeginEnd",               s:kw,      "",         "")
call HiColor("rubyBlockParameter",         s:kw,      "",         "")
call HiColor("rubyClass",                  s:kw,      "",         "")
call HiColor("rubyConditional",            s:kw,      "",         "")
call HiColor("rubyConstant",               s:fg,      "",         "bold")
call HiColor("rubyControl",                s:kw,      "",         "")
call HiColor("rubyDefine",                 s:kw,      "",         "")
call HiColor("rubyGlobalVariable",         s:yellow,  "",         "bold")
call HiColor("rubyInstanceVariable",       s:yellow,  "",         "")
call HiColor("rubyInterpolationDelimiter", s:pink2,   "",         "")
call HiColor("rubyKeyword",                s:kw,      "",         "")
call HiColor("rubyString",                 s:string,  "",         "")
call HiColor("rubyStringDelimiter",        s:string,  "",         "")
call HiColor("rubySymbol",                 s:kw,      "",         "")
call HiColor("rubyRegexp",                 s:pink2,   "",         "")
call HiColor("rubyRegexpDelimiter",        s:pink2,   "",         "")
call HiColor("rubyRegexpSpecial",          s:pink2,   "",         "")
call HiColor("rubyInclude",                s:kw,      "",         "")

" ### Vim Related #############################################################
call HiColor("vimCommand",                 s:kw,      "",         "")
call HiColor("vimOption",                  s:kw,      "",         "")
call HiColor("vimVar",                     s:phpVar1, "",         "")

" ### C/C++ Related ###########################################################
call HiColor("cConditional",               s:kw,      "",         "")
call HiColor("cppAccess",                  s:kw,      "",         "")

" ### PHP related #############################################################
call HiColor("phpAssignByRef",             s:fg,      "",         "")
call HiColor("phpBoolean",                 s:number,  "",         "")
call HiColor("phpClasses",                 s:fg,      "",         "")
call HiColor("phpComparison",              s:fg,      "",         "")
call HiColor("phpDefine",                  s:kw,      "",         "")
call HiColor("phpHereDoc",                 s:string,  "",         "")
call HiColor("phpDocCustomTags",           s:comment, "",         "bold")
call HiColor("phpDocParam",                s:comment, "",         "")
call HiColor("phpDocTags",                 s:comment, "",         "bold")
call HiColor("phpFunctions",               "52",      "",         "")
call HiColor("phpIdentifier",              s:phpVar1, "",         "")
call HiColor("phpInclude",                 s:kw,      "",         "")
call HiColor("phpMemberSelector",          s:fg,      "",         "")
call HiColor("phpMethodsVar",              s:fg,      "",         "")
call HiColor("phpRegion",                  s:fg,      "",         "")
call HiColor("phpSCKeyword",               s:kw,      "",         "")
call HiColor("phpSpecialFunction",         "52",     "",          "")
call HiColor("phpType",                    s:number,  "",         "")
call HiColor("phpVarSelector",             s:phpVar2, "",         "")

" ### JavaScript Related ######################################################
call HiColor("javaScript",                 s:fg,      "",         "")
call HiColor("javaScriptFunction",         s:kw,      "",         "")
call HiColor("javaScriptLabel",            s:kw,      "",         "")
call HiColor("javaScriptGlobalObjects",    s:fg,      "",         "bold")
call HiColor("javaScriptDocTags",          s:grey7,   "",         "bold")
call HiColor("javaScriptOperator",         s:kw,      "",         "")
call HiColor("javaScriptRegexpString",     s:pink2,   "",         "")

" ### Pmenu ###################################################################
call HiColor("Pmenu",                      s:bg,      s:number,   "")
call HiColor("PmenuSel",                   s:bg,      s:number,   "bold")

" ### NERDTree ################################################################
call HiColor("NERDTreeCWD",                s:fn,      "",         "none")
call HiColor("NERDTreeRO",                 s:kw,      "",         "")
call HiColor("NERDTreeFlag",               s:fg,      "",         "")

" ### Diff ####################################################################
call HiColor("DiffAdd",                    "",        "121",      "")
call HiColor("DiffDelete",                 "",        "224",      "")
call HiColor("DiffChange",                 "",        "230",      "")
call HiColor("DiffText",                   "",        "226",      "none")
"Ignore

" ### XML #####################################################################
call HiColor("xmlTagName",                 s:kw,      "",         "")
call HiColor("xmlAttrib",                  s:phpVar1, "",         "")
call HiColor("xmlEndTag",                  s:kw,      "",         "none")

" ### PO ######################################################################
call HiColor("poFormat",                   s:number,  "",         "")

" ### SQL #####################################################################
call HiColor("sqlStatement",               s:string,  "",         "")
call HiColor("sqlKeyword",                 s:string,  "",         "")
call HiColor("sqlOperator",                s:string,  "",         "")
call HiColor("sqlType",                    s:string,  "",         "")
call HiColor("sqlSpecial",                 s:number,  "",         "")
