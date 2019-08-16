" ---------------------- Basic configuration settings ------------------------
set path+=**                      " Search down into subfolders.provide tab-completion
                                  " for all file related tasks
set wildmenu                      " Display all matching files when we tab complete
								  " Hit tab to :find partial match
								  " Use * to make it fuzzy
command! MakeTags !ctags -R .     " Use * to make it fuzzy

" AUTOCOMPLETE:
" ^x^n for just this file
" ^x^f for filenames (works with path trick!)
" ^x^] for tags only
" ^n for anything specified by the 'complete' option
" ^n and ^p to go back and forth in the suggestion list
" FILE BROWSING:
"
"SNIPPETS:
"nnoremap ,html :lread $HOME/.vim/.skeleton.help(CR)3jwf>a
