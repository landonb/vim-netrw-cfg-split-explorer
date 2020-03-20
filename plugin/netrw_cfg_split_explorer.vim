" The only netrw defaults that seem to make sense. See also vim-vinegar.
" Author: Landon Bouma <https://tallybark.com/>
" Online: https://github.com/landonb/vim-netrw-cfg-split-explorer
" License: https://creativecommons.org/publicdomain/zero/1.0/
" vim:tw=0:ts=2:sw=2:et:norl:ft=vim

" YOU: Uncomment the 'unlet', then <F9> to reload this file.
"       https://github.com/landonb/vim-source-reloader
"  silent! unlet g:loaded_netrw_cfg_split_explorer

if exists("g:loaded_netrw_cfg_split_explorer") || &cp
  finish
endif
let g:loaded_netrw_cfg_split_explorer = 1

" -------------------------------------------------------------------------
" netrw/vim-vinegar tweaking
" -------------------------------------------------------------------------

" Ref:
"
"   - :h netrw
"
"   - "Vim: you don't need NERDtree or (maybe) netrw"
"     https://shapeshed.com/vim-netrw/
"
"   - vim-vinegar: 'Combine with netrw to create a delicious salad dressing'
"     https://github.com/tpope/vim-vinegar

" Press 'I' to toggle the banner.
let g:netrw_banner = 0

" The fastest, most obvious way to have files open is in the pane wherein you
" want to open the file. This isn't a project drawer! It's a split explorer.
" Options:
"  1 - open files in a new horizontal split
"  2 - open files in a new vertical split
"  3 - open files in a new tab
"  4 - open in previous window
"  0 - re-use same window (default)
let g:netrw_browse_split = 0

" There are four different view types: thin, long, wide and tree.
" - Press 'i' to toggle the view.
" - Opts: 'thin', one-file-per-line (0); long (1); wide (2); and tree (3).
" - (lb): There's really only one view type that makes sense/works well.
"   - First, in tree view, netrw does not resolve symlink paths correctly --
"     symlinks to files not in the same directory as the symlink are opened
"     using incorrect paths.
"     - AVOID: let g:netrw_liststyle = 3
"     - See: "Netrw fails to open symlinks in tree mode #2386"
"       Opened 2017-11-28 (not by me!) and still open 2020-03-19.
"         https://github.com/vim/vim/issues/2386
"   - I also tried 'long', but the tabstops do not align, so the details
"     column, well, it's not a column. Everything looks messy.
"     - AVOID: let g:netrw_liststyle = 1
" - Which leaves 0 or 2, one-per-line, or 'wide'. For the purpose of fast
"   navigation (e.g., :Explore, then press a number key and the down arrow
"   to jump quickly down the list of filenames, then press Enter to open),
"   set the netrw lifestyle, er, liststyle to show 'thin' listings.
let g:netrw_liststyle = 0

" The % of current win to use for new win on 'o', 'v', and H/Vexplore.
" - This setting is not documented in README.md or doc/ because this
"   setting is subjective; and I don't really use, because it affects
"   opening in a new split, which is not how I use netrw.
let g:netrw_winsize = 33

