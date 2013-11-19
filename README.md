vim-cpanfile
============

Vim utilities for cpanfile.

What does this plug-in support?
-------------------------------

- Syntax Highlighting for cpanfile
- Auto Completion of the cpanfile keywords (by [neocomplete](https://github.com/Shougo/neocomplete) or [neocomplcache](https://github.com/Shougo/neocomplcache))

How to install
--------------

If you are using [NeoBundle](https://github.com/Shougo/neobundle.vim), please write down some codes into `.vimrc`, like so;

    NeoBundle 'moznion/vim-cpanfile'

Or put files of this repository onto plug-in directory of Vim.

Configuration and Environment
-----------------------------

### For auto completion (optional)

Please configure `.vimrc` like so;

```vim
let g:neocomplcache_dictionary_filetype_lists = {
  \ ...
  \ 'cpanfile' : $HOME . '/.vim/bundle/vim-cpanfile/dict/cpanfile.dict'
\}
```

Dependencies
------------

It is not indispensable, however I recommend you to install the following plug-in.

- [neocomplete](https://github.com/Shougo/neocomplete)

or

- [neocomplcache](https://github.com/Shougo/neocomplcache)

License
-------

### MIT License

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
