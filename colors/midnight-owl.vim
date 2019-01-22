" ===============================================================
" midnight-owl
" 
" URL: 
" Author: Heiker
" License: MIT
" Last Change: 2019/01/22 13:26
" ===============================================================

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="midnight-owl"

hi Cursor guibg=#80A4C2 ctermbg=109 gui=NONE cterm=NONE
hi CursorLine guibg=#01121F ctermbg=233 gui=NONE cterm=NONE
hi CursorLineNr guifg=#5CA7E4 ctermfg=74 guibg=#01121F ctermbg=233 gui=NONE cterm=NONE
hi EndOfBuffer guifg=#4B6479 ctermfg=60 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#637777 ctermfg=243 gui=NONE cterm=NONE
hi IncSearch guibg=#1D3B53 ctermbg=237 gui=NONE cterm=NONE
hi LineNr guifg=#4B6479 ctermfg=60 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#011627 ctermfg=233 guibg=#5F7E97 ctermbg=66 gui=NONE cterm=NONE
hi Normal guifg=#D6DEEB ctermfg=253 guibg=#011627 ctermbg=233 gui=NONE cterm=NONE
hi PMenu guifg=NONE ctermfg=NONE guibg=#2D2C5D ctermbg=236 gui=NONE cterm=NONE
hi PMenuSel guifg=#011627 ctermfg=233 guibg=#C792EA ctermbg=176 gui=NONE cterm=NONE
hi Search guifg=#000000 ctermfg=0 guibg=#5F7E97 ctermbg=66 gui=NONE cterm=NONE
hi Title guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Visual guifg=#D6DEEB ctermfg=253 guibg=#1D3B53 ctermbg=237 gui=NONE cterm=NONE
hi Comment guifg=#637777 ctermfg=243 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi Constant guifg=#FF6363 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#ECC48D ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#F78C6C ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#82AAFF ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#C792EA ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=#7FDBCA ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Include guifg=#C792EA ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=#82AAFF ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Tag guifg=#7FDBCA ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssVendor guifg=#ADDB67 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssTagName guifg=#FF6363 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssSelectorOp guifg=#7FDBCA ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssSelectorOp2 guifg=#7FDBCA ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttrComma guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssCommonAttr guifg=#FF6363 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssPseudoClassId guifg=#ADDB67 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssColor guifg=#FFEB95 ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssIdentifier guifg=#FAD430 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssImportant guifg=#C792EA ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBraces guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttributeSelector guifg=#ADDB67 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssMediaType guifg=#80CBC4 ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssClassName guifg=#ADDB67 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssClassNameDot guifg=#ADDB67 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssProp guifg=#80CBC4 ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttr guifg=#FF6363 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssUnitDecorators guifg=#FFEB95 ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAtRule guifg=#80CBC4 ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTag guifg=#7FDBCA ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlEndTag guifg=#7FDBCA ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlArg guifg=#ADDB67 ctermfg=149 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi htmlTagName guifg=#7FDBCA ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsThis guifg=#7FDBCA ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsSuper guifg=#7FDBCA ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsArguments guifg=#7FDBCA ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassKeyword guifg=#82AAFF ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsDot guifg=#C792EA ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassMethodType guifg=#C792EA ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassDefinition guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsGlobalObjects guifg=#ADDB67 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsGlobalNodeObjects guifg=#ADDB67 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExceptions guifg=#ADDB67 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsException guifg=#C792EA ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExportDefault guifg=#C792EA ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsModuleAsterisk guifg=#FF6363 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsTemplateBraces guifg=#FF6363 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonString guifg=#C792EA ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBraces guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonKeyword guifg=#ADDB67 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonQuote guifg=#D9F5DD ctermfg=194 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH1 guifg=#82B1FF ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH2 guifg=#82B1FF ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH3 guifg=#82B1FF ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH4 guifg=#82B1FF ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH5 guifg=#82B1FF ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH6 guifg=#82B1FF ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownHeadingDelimiter guifg=#82B1FF ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownListMarker guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBlockquote guifg=#697098 ctermfg=60 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkText guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrl guifg=#FF869A ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownItalic guifg=#ADDB67 ctermfg=149 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi markdownBold guifg=#ADDB67 ctermfg=149 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownLinkTextDelimiter guifg=#82B1FF ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkDelimiter guifg=#7FDBCA ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCode guifg=#AAAAAA ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpMethod guifg=#82AAFF ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpFunction guifg=#82AAFF ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpKeyword guifg=#C792EA ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpType guifg=#82AAFF ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpInclude guifg=#C792EA ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpParent guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpBrackets guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpIdentifier guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpClass guifg=#FFCB8B ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpClasses guifg=#FFCB8B ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpClassExtends guifg=#ADDB67 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpFunctions guifg=#82AAFF ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpStaticClasses guifg=#FFCB8B ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpSuperglobals guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpMethodsVar guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpNewInstance guifg=#FFCB8B ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpLanguageVars guifg=#7FDBCA ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlBlockCollectionItemStart guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlBlockMappingKey guifg=#7FDBCA ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlKeyValueDelimiter guifg=#D6DEEB ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlPlainScalar guifg=#ADDB67 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE


" ===================================
" Generated by Estilo 1.3.3
" https://github.com/jacoborus/estilo
" ===================================
