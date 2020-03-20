# vim-netrw-cfg-split-explorer

Sets the netrw global variable options to the only values I think make sense.

Be sure you also grab Tim Pope's [vim-vinegar](https://github.com/tpope/vim-vinegar).

## Commands

None. Sets a few `g:*` netrw configuration values.

- Hide the banner. Press `I` to toggle it.

  ```vim
  let g:netrw_banner = 0
  ```

- Open files in the current window pane.
  This is a split explorer after all, and not a project drawer!

  ```vim
  " Options:
  "  1 - open files in a new horizontal split
  "  2 - open files in a new vertical split
  "  3 - open files in a new tab
  "  4 - open in previous window
  "  0 - re-use same window (default)
  let g:netrw_browse_split = 0
  ```

- Show a 'thin' directory listing. Because bug in 'tree' view cannot open
  symlinks; the 'long' view is a mess because tab stops do not align; and
  the 'wide' view generally requires extra keystrokes to find and open files.

  ```vim
  " Options: 'thin', one-file-per-line (0); long (1); wide (2); and tree (3).
  let g:netrw_liststyle = 0
  ```

## Installation

Take advantage of Vim's packages feature (`:h packages`), e.g.,:

  ```shell
  mkdir -p ~/.vim/pack/landonb/start
  cd ~/.vim/pack/landonb/start
  git clone https://github.com/landonb/vim-netrw-cfg-split-explorer.git
  vim -u NONE -c "helptags vim-netrw-cfg-split-explorer/doc" -c q
  ```

To load the plugin manually, install to
`~/.vim/pack/landonb/opt` instead and call
`:packadd vim-netrw-cfg-split-explorer` when ready.

## License

Copyright (c) Landon Bouma. This work is distributed
wholly under CC0 and dedicated to the Public Domain.

https://creativecommons.org/publicdomain/zero/1.0/

