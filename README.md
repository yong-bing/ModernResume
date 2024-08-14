# Modern Resume - 现代简历模板

这是一个简洁、专业且易于定制的LaTeX简历模板。

## 特点

- 清晰的布局设计
- 易于定制的颜色方案
- 包含常用的简历部分,如教育背景、工作经验、项目经验等
- 使用FontAwesome图标增强视觉效果
- 支持超链接

## 使用方法

1. 确保你的LaTeX环境已安装并配置好XeLaTeX编译器。
2. 克隆本项目至本地
    ```shell
    git clone https://github.com/yong-bing/ModernResume.git
    ```
3. 使用你喜欢的LaTeX编辑器打开`example.tex`文件。
4. 根据你的个人信息修改内容。
5. 使用XeLaTeX编译文档。

## 自定义

### 颜色

你可以通过修改以下行来更改主色和次要色：

```latex
\definecolor{MainColor}{RGB}{0,62,116}
\definecolor{SecondaryColor}{RGB}{100,100,100}
```

### 字体
```latex
\setmainfont{SourceHanSansCN}[
    Path = Font/,
    Extension = .otf,
    UprightFont = *-Regular,
    BoldFont = *-Bold,
    ItalicFont = *-Light,
    BoldItalicFont = *-Medium
]

\setCJKmainfont{SourceHanSansCN}[
    Path = Font/,
    Extension = .otf,
    UprightFont = *-Regular,
    BoldFont = *-Bold,
    ItalicFont = *-Light,
    BoldItalicFont = *-Medium
]
```
### 贡献
欢迎提交问题报告、功能请求和Pull Requests。对于重大更改,请先开issue讨论您想要改变的内容。
### 许可
本项目采用MIT许可证。详情请见LICENSE文件。

### 致谢

感谢FontAwesome提供的图标。
感谢思源黑体项目提供的开源字体。