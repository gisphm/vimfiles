@echo off
REM Copyright 2015 gisphm <phmfk@hotmail.com>
REM Author: gisphm <phmfk@hotmail.com>
REM
REM Licensed under the Apache License, Version 2.0 (the "License");
REM you may not use this file except in compliance with the License.
REM You may obtain a copy of the License at
REM
REM   http://www.apache.org/licenses/LICENSE-2.0
REM
REM Unless required by applicable law or agreed to in writing, software
REM distributed under the License is distributed on an "AS IS" BASIS,
REM WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
REM See the License for the specific language governing permissions and
REM limitations under the License.

if not exist "%HOME%\vimfiles\bundle" (
	CALL mkdir "%HOME%\vimfiles\bundle"
)
IF NOT EXIST "%HOME%\vimfiles\tmp" (
	CALL MKDIR "%HOME%\vimfiles\tmp\sessions
	CALL MKDIR "%HOME%\vimfiles\tmp\lock
	CALL MKDIR "%HOME%\vimfiles\tmp\backup
	CALL MKDIR "%HOME%\vimfiles\tmp\swap
	CALL MKDIR "%HOME%\vimfiles\tmp\undo
	CALL MKDIR "%HOME%\vimfiles\tmp\view
)
if not exist "%HOME%\vimfiles\bundle\Vundle.vim" (
	CALL git clone https://github.com/gmarik/Vundle.vim.git %HOME%\vimfiles\bundle\Vundle.vim
) ELSE (
	CALL CD "%HOME%\vimfiles\bundle\Vundle.vim"
	CALL git pull
	CALL CD %HOME%
)
@ECHO ON