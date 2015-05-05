## 我在Windows上的vim配置

fork自[myvimrc][2]，我自己根据[spf13-vim][1]“改进”的在linux上用的vim配置。

## 配置文件列表
文件列表不变，如下：

+ __vimrc__ 主配置文件，包含[Vundle][3]的初始化和对以下两个文件夹的引用
+ __vundles/__ 插件列表文件所在文件夹，包含所有安装的插件，按照[spf13-vim][1]进行分组
+ __settings/__ 插件配置文件夹，包含已安装插件的一些配置与vim的基本配置，与`neobundles`的分组对应
+ __install.cmd__ 用来辅助安装的文件，生成`tmp`文件夹和克隆`neobundle.vim`。
+ __bundle__ 包含在git的忽略文件里，所有安装的插件都在这个文件夹里
+ __tmp__ 包含vim的`swap` `undo` `view` `backup` `session`文件夹

## TODO
1. ✓ 解决目前配置可用的问题
2. 替换`ag.vim`为`ack.vim`
2. 解决可能遇到的问题（长期）

## 几点说明
+ 之所以用[vundle][3]，是因为`neobundle`在windows上表现并不佳
+ windows上的这个vim是我自己用vs2010编译的版本，可在这里获取[我的vim][4]。

## 几点事项
1. 这个配置只打算在windows上（目前是在win8.1专业版64位）进行使用。
2. 这个配置并不完善，许多地方会有问题。
3. 感谢 __Bram Moolenaar__ 和其他vim的维护者们创造了如此多彩的编辑器。
3. 感谢 __Steve Francia__ 在github上分享了这么有用的配置。
5. 感谢所有插件的作者与维护者们，你们共同创造了vim社区的现在。

## 许可证
Copyright 2015 gisphm <phmfk@hotmail.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[1]: https://github.com/spf13/spf13-vim.git
[2]: https://github.com/gisphm/myvimrc.git
[3]: https://github.com/gmarik/Vundle.vim.git
[4]: https://github.com/gisphm/vimx64.git