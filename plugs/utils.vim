" modeline and notes {{{
" vim: set ft=vim sw=4 ts=4 sts=4 et tw=78 foldlevel=0 foldmethod=marker:
"
" Copyright 2015 gisphm <phmfk@hotmail.com>
" Author: gisphm <phmfk@hotmail.com>
"
" Licensed under the Apache License, Version 2.0 (the "License");
" you may not use this file except in compliance with the License.
" You may obtain a copy of the License at
"
"   http://www.apache.org/licenses/LICENSE-2.0
"
" Unless required by applicable law or agreed to in writing, software
" distributed under the License is distributed on an "AS IS" BASIS,
" WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
" See the License for the specific language governing permissions and
" limitations under the License.
"
" }}}

" Programming {{{

Plug 'tpope/vim-fugitive'
Plug 'gisphm/vim-gitignore'
Plug 'tpope/vim-dispatch'
Plug 'idanarye/vim-merginal'
Plug 'int3/vim-extradite'
Plug 'scrooloose/syntastic'
Plug 'mhinz/vim-signify'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'tomtom/tcomment_vim'
if executable('ctags')
    Plug 'majutsushi/tagbar'
endif
Plug 'Chiel92/vim-autoformat'

" }}}

" Misc {{{

Plug 'bootleq/LargeFile'
" Plug 's3rvac/AutoFenc'
Plug 'antoyo/vim-licenses'

" }}}

" Writing {{{

Plug 'hotoo/pangu.vim'

" }}}
