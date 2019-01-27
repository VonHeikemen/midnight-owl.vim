<p align="center">Based on Sarah Drasner's <a href="https://github.com/sdras/night-owl-vscode-theme">Night Owl</a> VSCode theme</p>

<p align="center">A theme for the night owls out there. Works well in the daytime, too, but this theme is fine-tuned for those of us who like to code late into the night.</p>

## Getting Started

### Installation

**Using** [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'VonHeikemen/midnight-owl.vim'
```

### Activation
```vim
" For vim > 8
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

syntax enable
colorscheme midnight-owl
```

## Workarounds

Some plugins don't provide enough information to make a consistent syntax hightlight, this are some workarounds that can be use in some languages.

### PHP

```vim
function! PhpSyntaxOverride()
  " Tweak keywords
  syn keyword phpLanguageVars this containedin=phpIdentifier
  syn keyword phpLanguageVars parent self containedin=phpRegion
  syn keyword phpFunctions isset empty
  syn keyword phpKeyword public private protected containedin=phpType

  " New instance match
  syn match phpClassReference /\v(new)@<=\s+\w*/ containedin=phpRegion

  " Function call match
  syn match phpFunctionCall /\v\h\w*\ze(\s?\()/ 
    \ containedin=phpRegion,phpIdentifier
 
  " highlight all types of functions
  hi! link phpFunctionCall Function
  hi! link phpMethod Function
  hi! link phpFunction Function

  " highlight all class references
  hi! link phpClasses phpClassReference
  hi! link phpStaticClasses phpClassReference
  hi! link phpClass phpClassReference
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
```

