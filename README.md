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
  syn keyword phpLanguageVars this containedin=phpIdentifier
  syn keyword phpLanguageVars parent self containedin=phpRegion
  syn keyword phpFunctions isset
  syn keyword phpKeyword public private protected containedin=phpType
 
  syn match phpFunctionCall /\v\h\w*\ze(\s?\()/ 
    \ containedin=phpRegion,phpIdentifier
  syn match phpNewInstance /\v(new\s+)@<=\h\w*\ze(\s?\()/ 
    \ containedin=phpRegion
  
  hi! link phpFunctionCall Function
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
```

