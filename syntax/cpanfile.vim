" Vim syntax file
" Language:   cpanfile
" Maintainer: moznion <moznion@gmail.com>
" Version:    0.01
" URL:        https://github.com/moznion/vim-cpanfile
" Anon CVS:   See above site

let s:cpo_save = &cpo
set cpo&vim

syn keyword cpanfileInclude requires recommends suggests conflicts
                          \ configure_requires build_requires
                          \ test_requires author_requires
syn keyword cpanfileConditional on feature
" syn keyword ??? osname " TODO it has not implemented yet.

hi def link cpanfileInclude     Include
hi def link cpanfileConditional Conditional

let b:current_syntax = "cpanfile"

let &cpo = s:cpo_save
unlet s:cpo_save
