fzfgem.vim
===============

fzf.vim + vim-bundler

Installation
------------

### Using [vim-plug](vim-plug)

```vim
" Required dependencies
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-bundler'

" The plugin
Plug 'dancallaghan/fzfgem.vim'
```

### Dependencies

- [fzf](fzf)
- [fzf.vim](fzf.vim)
- [vim-bundler](vim-bundler)

Commands
--------

`:Gems` will open a fzf window with a list of gems defined in the current
project's Gemfile.

If the command errors, you may not be in a file that is covered by the
`Gemfile`.

From the [vim-bundler](vim-bundler) README:
> This plugin cares about the current file, not the current working directory. Edit a file that's covered by a Gemfile.

[fzf]: https://github.com/junegunn/fzf
[fzf.vim]: https://github.com/junegunn/fzf.vim
[vim-bundler]: https://github.com/tpope/vim-bundler
[vim-plug]: https://github.com/junegunn/vim-plug
