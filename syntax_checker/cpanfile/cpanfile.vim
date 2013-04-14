"File:        cpanfile.vim
"Description: cpanfile syntax checking plugin for syntastic.vim
"Maintainer:  moznion <moznion[__at__]gmail.com>,
"License:     MIT License

let s:cpo_save = &cpo
set cpo&vim

function! SyntaxCheckers_cpanfile_cpanfile_IsAvailable()
  let l:module = 'Module::CPANfile'
  let l:err    = system("perl -M" . l:module . " -e ''")

  if l:err == ''
    return 1  " Successful
  endif

  return 0  " Failure
endfunction

function! s:ConstructCommand()
  let l:parser_name = 'parse_cpanfile.pl'
  let l:parser_path = shellescape(expand('<sfile>:p:h') . '/' . l:parser_name)

  return 'perl ' . l:parser_path
endfunction

function! SyntaxCheckers_cpanfile_cpanfile_GetLocList()
  let makeprg     = s:ConstructCommand() . ' ' . shellescape(expand('%'))
  let errorformat = '%t;%f;%l;%m'

  return SyntasticMake({ 'makeprg': makeprg, 'errorformat': errorformat })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
  \ 'filetype': 'cpanfile',
  \ 'name': 'cpanfile'})

let &cpo = s:cpo_save
unlet s:cpo_save
