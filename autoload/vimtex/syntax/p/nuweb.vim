" Vim syntax file
" Language:	NUWEB
" Maintainer:	Ahmed Fasih <fasih.1@osu.edu>, Patricio Toledo Pe~na <!-- <patoledo@ing.uchile.cl> -->
" Last Change:  2017-08-26 02:00
" Obs:		WEB/CWEB files uses .w, so i decide to use .nw as
"		identificator

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
"

function! vimtex#syntax#p#nuweb#load() abort 
    
  " Try to flag Scrap mismatches
  syntax cluster texFoldGroup add=nuwebFiles,nuwebMacro,
          \ nuwebScrap,nuwebParameter,nuwebComment

  " Highlight Scrap and Macros --> @o filename, 'til end of line
  syn region  nuwebFiles start="@\c\(o\|i\)\s\=" end="$"
  syn region  nuwebMacro start="@\c\(d\|f\|m\|u\)\s\=" end="$"

  " Highlight other Scrap
  syn match   nuwebScrap	   "@\(<\|>\)\+"
  syn match   nuwebScrap	   "@\([\|]\)\+"
  syn match   nuwebScrap	   "@\((\|)\)\+"

  syn match   nuwebParameter "@\d\+"

  " Comments inside Scrap
  syn match   nuwebComment   "@%.*$"

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

  hi def link  nuwebFiles	    Type
  hi def link  nuwebMacro	    Type
  hi def link  nuwebScrap	    Identifier
  hi def link  nuwebParameter   Identifier
  hi def link  nuwebComment     Comment
  hi def link  nuwebError	    Error

endfunction
