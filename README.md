# vim-cpanfile

Vim utilities for cpanfile.


# What does it support?

- Syntax Highlighting
- Auto Completion (by using [neocomplcache](https://github.com/Shougo/neocomplcache))


# How to install

If you are using NeoBundle, please write down some codes into '.vimrc', like so:

    NeoBundle 'moznion/vim-cpanfile'

Or put files of this repository onto plugin directory of vim.

# Configuration and Environment

Please configure into .vimrc like so;

## Common configuration

    ...
    au BufNewFile,BufRead cpanfile set filetype=cpanfile
    au BufNewFile,BufRead cpanfile set syntax=perl.cpanfile
    ...


## For auto completion

    let g:neocomplcache_dictionary_filetype_lists = {
      \ ...
      \ 'cpanfile' : $HOME . '/.vim/bundle/vim-cpanfile/dict/cpanfile.dict'
    \}


# Dependencies

It is not indispensable, but it suggests to install the following.

- [neocomplcache](https://github.com/Shougo/neocomplcache)

#License

MIT License

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
