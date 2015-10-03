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

" General {{{

if has('gui_running') && has('gui_win32') && has('libcall')
    " Disable toolbar and scrollbars
    set guioptions-=T
    set guioptions-=r
    set guioptions-=R
    set guioptions-=l
    set guioptions-=L
    set guioptions-=m

    " fix menu error
    "source $VIMRUNTIME/delmenu.vim
    "source $VIMRUNTIME/menu.vim

    " 50 lines of text
    set lines=50

    set guifont=DejaVu_Sans_Mono_for_powerline:h10

    " gui using solarized colorscheme
    colo solarized

    if filereadable(expand('$VIM/gvimfullscreen.dll'))
        let g:MyFullScreen = $VIM.'/gvimfullscreen.dll'
        function! ToggleFullScreen()
            call libcallnr(g:MyFullScreen, "ToggleFullScreen", 0)
        endfunction


        let g:VimAlpha = 245
        function! SetAlpha(alpha)
            let g:VimAlpha = g:VimAlpha + a:alpha
            if g:VimAlpha < 180
                let g:VimAlpha = 180
            endif
            if g:VimAlpha > 255
                let g:VimAlpha = 255
            endif
            call libcall(g:MyFullScreen, 'SetAlpha', g:VimAlpha)
        endfunction

        let g:VimTopMost = 0
        function! SwitchVimTopMostMode()
            if g:VimTopMost == 0
                let g:VimTopMost = 1
            else
                let g:VimTopMost = 0
            endif
            call libcall(g:MyFullScreen, 'EnableTopMost', g:VimTopMost)
        endfunction

        map <F11> <Esc>:call ToggleFullScreen()<CR>

        "切换Vim是否在最前面显示
        nmap <s-r> <esc>:call SwitchVimTopMostMode()<cr>
        "增加Vim窗体的不透明度
        nmap <s-t> <esc>:call SetAlpha(5)<cr>
        "增加Vim窗体的透明度
        nmap <s-y> <esc>:call SetAlpha(-5)<cr>
        " 默认设置透明
        autocmd GUIEnter * call libcallnr(g:MyFullScreen, 'SetAlpha', g:VimAlpha)
    endif
endif

" }}}
