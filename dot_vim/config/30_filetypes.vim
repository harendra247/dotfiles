" --------------------------- Filetype overrides ---------------------------
autocmd BufRead,BufNewFile */source/*.html set filetype=liquid
autocmd BufRead,BufNewFile *.txt set filetype=text
autocmd BufRead,BufNewFile *.wiki set filetype=wiki
autocmd BufRead,BufNewFile */_posts/* set filetype=octopress
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.markdown set filetype=markdown

" ----------------- Version-specific filetype preferences -----------------
if v:version > 702
    autocmd FileType php set colorcolumn=120
    autocmd FileType markdown set colorcolumn=80
endif

" vim: set et ts=4 sw=4 :
""Harendra"
" Automatic commands
if has("autocmd")
	" Enable file type detection
 	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown

    " Use filetype detection and file-based automatic indenting.
    filetype plugin indent on

    " Use actual tab chars in Makefiles.
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif
