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

if not exist "%HOME%\.vim\bundle" (
	CALL mkdir "%HOME%\.vim\bundle"
)
IF NOT EXIST "%HOME%\.vim\tmp" (
	CALL MKDIR "%HOME%\.vim\tmp\sessions
	CALL MKDIR "%HOME%\.vim\tmp\lock
	CALL MKDIR "%HOME%\.vim\tmp\backup
	CALL MKDIR "%HOME%\.vim\tmp\swap
	CALL MKDIR "%HOME%\.vim\tmp\undo
	CALL MKDIR "%HOME%\.vim\tmp\view
)
if not exist "%HOME%\.vim\bundle\Vundle.vim" (
	CALL git clone https://github.com/gmarik/Vundle.vim.git %HOME%\.vim\bundle\Vundle.vim
) ELSE (
	CALL CD "%HOME%\.vim\bundle\Vundle.vim"
	CALL git pull
	CALL CD %HOME%
)
@ECHO ON