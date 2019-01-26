" ============================================================================
" midnight-owl
" 
" URL: https://github.com/VonHeikemen/midnight-owl.vim
" Author: Heiker
" License: MIT
" ============================================================================

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="midnight-owl"

" ============================================================================ "
" ===                                COLORS                                === "
" ============================================================================ "

let s:black        = {"gui": "#011627", "cterm": "233"}
let s:white        = {"gui": "#D6DEEB", "cterm": "253"}
let s:gray         = {"gui": "#637777", "cterm": "243"}
let s:blue         = {"gui": "#82AAFF", "cterm": "111"}
let s:red          = {"gui": "#FF6363", "cterm": "203"}
let s:yellow       = {"gui": "#ECC48D", "cterm": "222"}
let s:magenta      = {"gui": "#C792EA", "cterm": "176"}
let s:cyan         = {"gui": "#7FDBCA", "cterm": "116"}
let s:orange       = {"gui": "#F78C6C", "cterm": "209"}
let s:green        = {"gui": "#ADDB67", "cterm": "149"}

let s:light_blue   = {"gui": "#80A4C2", "cterm": "109"}
let s:sad_blue     = {"gui": "#1D3B53", "cterm": "237"}
let s:cold_blue    = {"gui": "#5F7E97", "cterm": "66" }
let s:live_blue    = {"gui": "#82B1FF", "cterm": "111"}
let s:pink         = {"gui": "#FF2C83", "cterm": "198"}

let s:grayish_blue = {"gui": "#4B6479", "cterm": "60" }
let s:dark_blue    = {"gui": "#01121F", "cterm": "233"}
let s:dark_purple  = {"gui": "#2D2C5D", "cterm": "236"}
let s:bright_black = {"gui": "#25293A", "cterm": "235"}
let s:darkness     = {"gui": "#000000", "cterm": "0"  }
let s:pale_yellow  = {"gui": "#FFEB95", "cterm": "222"}
let s:yellow_ish   = {"gui": "#FAD430", "cterm": "221"}
let s:sad_cyan     = {"gui": "#80CBC4", "cterm": "116"}
let s:light_green  = {"gui": "#D9F5DD", "cterm": "194"}
let s:soft_pink    = {"gui": "#FF869A", "cterm": "210"}

" Constants
let s:none       = {"gui": "NONE", "cterm": "NONE"}
let s:foreground = s:white
let s:comment    = s:gray
let s:constant   = s:red
let s:number     = s:orange
let s:keyword    = s:magenta
let s:storage    = s:blue
let s:function   = s:blue
let s:string     = s:yellow
let s:support    = s:green
let s:lang_var   = s:cyan
let s:error      = s:pink

let s:gray_term_1 = "#AAAAAA"
let s:gray_term_2 = "#EEEEEE"

" Highlight utility function
" https://github.com/noahfrederick/vim-hemisu/
" Usage: call s:h("", {"fg": s:none, "bg": s:none})
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction


" ============================================================================ "
" ===                               BASE UI                                === "
" ============================================================================ "

call s:h("Normal",       {"fg": s:foreground,   "bg": s:black       })
call s:h("Cursor",       {"fg": s:none,         "bg": s:light_blue  })
call s:h("CursorLine",   {"fg": s:none,         "bg": s:dark_blue   })
call s:h("CursorLineNr", {"fg": s:none,         "bg": s:dark_blue   })
call s:h("ColorColumn",  {"fg": s:none,         "bg": s:bright_black})
call s:h("LineNr",       {"fg": s:grayish_blue, "bg": s:none        })
call s:h("EndOfBuffer",  {"fg": s:grayish_blue, "bg": s:none        })
call s:h("VertSplit",    {"fg": s:gray,         "bg": s:none        })
call s:h("Folded",       {"fg": s:gray,         "bg": s:black       })
call s:h("FoldColumn",   {"fg": s:gray,         "bg": s:black       })
call s:h("PMenu",        {"fg": s:none,         "bg": s:dark_purple })
call s:h("PMenuSel",     {"fg": s:black,        "bg": s:magenta     })
call s:h("MatchParen",   {"fg": s:black,        "bg": s:cold_blue   })
call s:h("Visual",       {"fg": s:white,        "bg": s:sad_blue    })
call s:h("Search",       {"fg": s:darkness,     "bg": s:cold_blue   })
call s:h("IncSearch",    {"fg": s:white,        "bg": s:sad_blue    })


" ============================================================================ "
" ===                             BASE SYNTAX                              === "
" ============================================================================ "

call s:h("Title",      {"fg": s:foreground, "bg": s:none     })
call s:h("Comment",    {"fg": s:comment,    "bg": s:none     })
call s:h("Constant",   {"fg": s:constant,   "bg": s:none     })
call s:h("String",     {"fg": s:string,     "bg": s:none     })
call s:h("Number",     {"fg": s:number,     "bg": s:none     })
call s:h("Identifier", {"fg": s:foreground, "bg": s:none     })
call s:h("Function",   {"fg": s:function,   "bg": s:none     })
call s:h("Statement",  {"fg": s:keyword,    "bg": s:none     })
call s:h("Exception",  {"fg": s:lang_var,   "bg": s:none     })
call s:h("PreProc",    {"fg": s:foreground, "bg": s:none     })
call s:h("Include",    {"fg": s:keyword,    "bg": s:none     })
call s:h("Type",       {"fg": s:storage,    "bg": s:none     })
call s:h("Special",    {"fg": s:foreground, "bg": s:none     })
call s:h("Tag",        {"fg": s:lang_var,   "bg": s:none     })
call s:h("Delimiter",  {"fg": s:foreground, "bg": s:none     })
call s:h("Error",      {"fg": s:foreground, "bg": s:error    })
call s:h("Todo",       {"fg": s:black,      "bg": s:live_blue})


" ============================================================================ "
" ===                           LANGUAGE SUPPORT                           === "
" ============================================================================ "

" Language: Diff
" Syntax: built-in
call s:h("DiffAdd",    {"fg": s:black, "bg": s:green})
call s:h("DiffChange", {"fg": s:black, "bg": s:cyan })
call s:h("DiffDelete", {"fg": s:black, "bg": s:red  })
call s:h("DiffText",   {"fg": s:black, "bg": s:cyan })



" Language: HTML
" Syntax: built-in
call s:h("htmlTag",     {"fg": s:lang_var, "bg": s:none})
call s:h("htmlEndTag",  {"fg": s:lang_var, "bg": s:none})
call s:h("htmlArg",     {"fg": s:support,  "bg": s:none})
call s:h("htmlTagName", {"fg": s:lang_var, "bg": s:none})



" Language: CSS
" Syntax: built-in
call s:h("cssVendor",            {"fg": s:green,       "bg": s:none})
call s:h("cssTagName",           {"fg": s:red,         "bg": s:none})
call s:h("cssSelectorOp",        {"fg": s:cyan,        "bg": s:none})
call s:h("cssSelectorOp2",       {"fg": s:cyan,        "bg": s:none})
call s:h("cssAttrComma",         {"fg": s:foreground,  "bg": s:none})
call s:h("cssCommonAttr",        {"fg": s:red,         "bg": s:none})
call s:h("cssPseudoClassId",     {"fg": s:green,       "bg": s:none})
call s:h("cssColor",             {"fg": s:pale_yellow, "bg": s:none})
call s:h("cssIdentifier",        {"fg": s:yellow_ish,  "bg": s:none})
call s:h("cssImportant",         {"fg": s:keyword,     "bg": s:none})
call s:h("cssBraces",            {"fg": s:foreground,  "bg": s:none})
call s:h("cssAttributeSelector", {"fg": s:green,       "bg": s:none})
call s:h("cssMediaType",         {"fg": s:sad_cyan,    "bg": s:none})
call s:h("cssClassName",         {"fg": s:green,       "bg": s:none})
call s:h("cssClassNameDot",      {"fg": s:green,       "bg": s:none})
call s:h("cssProp",              {"fg": s:sad_cyan,    "bg": s:none})
call s:h("cssAttr",              {"fg": s:red,         "bg": s:none})
call s:h("cssUnitDecorators",    {"fg": s:pale_yellow, "bg": s:none})
call s:h("cssAtRule",            {"fg": s:sad_cyan,    "bg": s:none})



" Language: JSON
" Syntax: built-in
call s:h("jsonString",  {"fg": s:magenta,     "bg": s:none})
call s:h("jsonBraces",  {"fg": s:white,       "bg": s:none})
call s:h("jsonKeyword", {"fg": s:green,       "bg": s:none})
call s:h("jsonQuote",   {"fg": s:light_green, "bg": s:none})



" Language: Markdown
" Syntax: built-in
call s:h("markdownH1",                {"fg": s:live_blue,    "bg": s:none})
call s:h("markdownH2",                {"fg": s:live_blue,    "bg": s:none})
call s:h("markdownH3",                {"fg": s:live_blue,    "bg": s:none})
call s:h("markdownH4",                {"fg": s:live_blue,    "bg": s:none})
call s:h("markdownH5",                {"fg": s:live_blue,    "bg": s:none})
call s:h("markdownH6",                {"fg": s:live_blue,    "bg": s:none})
call s:h("markdownHeadingDelimiter",  {"fg": s:live_blue,    "bg": s:none})
call s:h("markdownListMarker",        {"fg": s:foreground,   "bg": s:none})
call s:h("markdownBlockquote",        {"fg": s:grayish_blue, "bg": s:none})
call s:h("markdownLinkText",          {"fg": s:foreground,   "bg": s:none})
call s:h("markdownUrl",               {"fg": s:soft_pink,    "bg": s:none})
call s:h("markdownItalic",            {"fg": s:green,        "bg": s:none})
call s:h("markdownBold",              {"fg": s:green,        "bg": s:none})
call s:h("markdownLinkTextDelimiter", {"fg": s:live_blue,    "bg": s:none})
call s:h("markdownLinkDelimiter",     {"fg": s:cyan,         "bg": s:none})
call s:h("markdownCode",              {"fg": s:gray,         "bg": s:none})



" Language: YAML
" Syntax: built-in
call s:h("yamlBlockCollectionItemStart", {"fg": s:foreground, "bg": s:none})
call s:h("yamlBlockMappingKey",          {"fg": s:lang_var,   "bg": s:none})
call s:h("yamlKeyValueDelimiter",        {"fg": s:foreground, "bg": s:none})
call s:h("yamlPlainScalar",              {"fg": s:support,    "bg": s:none})



" Language: Twig
" Syntax: 'lumiliet/vim-twig' 
call s:h("twigString",    {"fg": s:string,     "bg": s:none})
call s:h("twigBlockName", {"fg": s:foreground, "bg": s:none})



" Language: Javascript
" Syntax: 'pangloss/vim-javascript'
call s:h("jsThis",              {"fg": s:lang_var,   "bg": s:none})
call s:h("jsSuper",             {"fg": s:lang_var,   "bg": s:none})
call s:h("jsArguments",         {"fg": s:lang_var,   "bg": s:none})
call s:h("jsClassKeyword",      {"fg": s:blue,       "bg": s:none})
call s:h("jsDot",               {"fg": s:keyword,    "bg": s:none})
call s:h("jsClassMethodType",   {"fg": s:keyword,    "bg": s:none})
call s:h("jsClassDefinition",   {"fg": s:foreground, "bg": s:none})
call s:h("jsGlobalObjects",     {"fg": s:support,    "bg": s:none})
call s:h("jsGlobalNodeObjects", {"fg": s:support,    "bg": s:none})
call s:h("jsExceptions",        {"fg": s:support,    "bg": s:none})
call s:h("jsException",         {"fg": s:keyword,    "bg": s:none})
call s:h("jsExportDefault",     {"fg": s:keyword,    "bg": s:none})
call s:h("jsModuleAsterisk",    {"fg": s:constant,   "bg": s:none})
call s:h("jsTemplateBraces",    {"fg": s:red,        "bg": s:none})



" Language: PHP
" Syntax: 'StanAngeloff/php.vim'
call s:h("phpMethod",        {"fg": s:foreground, "bg": s:none})
call s:h("phpFunction",      {"fg": s:foreground, "bg": s:none})
call s:h("phpKeyword",       {"fg": s:keyword,    "bg": s:none})
call s:h("phpType",          {"fg": s:storage,    "bg": s:none})
call s:h("phpInclude",       {"fg": s:keyword,    "bg": s:none})
call s:h("phpParent",        {"fg": s:foreground, "bg": s:none})
call s:h("phpBrackets",      {"fg": s:foreground, "bg": s:none})
call s:h("phpIdentifier",    {"fg": s:foreground, "bg": s:none})
call s:h("phpClass",         {"fg": s:foreground, "bg": s:none})
call s:h("phpClasses",       {"fg": s:support,    "bg": s:none})
call s:h("phpClassExtends",  {"fg": s:support,    "bg": s:none})
call s:h("phpFunctions",     {"fg": s:function,   "bg": s:none})
call s:h("phpStaticClasses", {"fg": s:foreground, "bg": s:none})
call s:h("phpSuperglobals",  {"fg": s:support,    "bg": s:none})
call s:h("phpMethodsVar",    {"fg": s:foreground, "bg": s:none})
call s:h("phpNullValue",     {"fg": s:constant,   "bg": s:none})
call s:h("phpLanguageVars",  {"fg": s:lang_var,   "bg": s:none})



" ============================================================================ "
" ===                              NVIM TERM                               === "
" ============================================================================ "

let g:terminal_color_foreground = s:foreground.gui
let g:terminal_color_background = s:black.gui
let g:terminal_color_0          = s:black.gui
let g:terminal_color_8          = s:gray.gui
let g:terminal_color_1          = s:soft_pink.gui
let g:terminal_color_2          = s:green.gui
let g:terminal_color_10         = s:green.gui
let g:terminal_color_3          = s:orange.gui
let g:terminal_color_11         = s:orange.gui
let g:terminal_color_4          = s:blue.gui
let g:terminal_color_12         = s:blue.gui
let g:terminal_color_5          = s:magenta.gui
let g:terminal_color_13         = s:magenta.gui
let g:terminal_color_6          = s:cyan.gui
let g:terminal_color_14         = s:cyan.gui
let g:terminal_color_7          = s:gray_term_1
let g:terminal_color_15         = s:gray_term_2