\ProvidesClass{modern-resume}[2024/08/15 v1.2 现代简历模板]
\LoadClass[11pt]{article}

% 导入必要的包
\RequirePackage{xltxtra,xifthen,fontawesome5,xcolor,calc,fontspec,xeCJK,geometry,titlesec,enumitem,hyperref,url,tikz}

% 全局禁用缩进
\setlength{\parindent}{0pt}

% 超链接设置
\hypersetup{colorlinks=true, linkcolor=MainColor, urlcolor=MainColor, citecolor=MainColor}

% 定义颜色
\definecolor{MainColor}{RGB}{0,62,116}
\definecolor{SecondaryColor}{RGB}{100,100,100}

% 中文设置
\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt

% 设置英文字体
\setmainfont{SourceHanSansCN}[
    Path = Font/,
    Extension = .otf,
    UprightFont = *-Regular,
    BoldFont = *-Bold,
    ItalicFont = *-Light,
    BoldItalicFont = *-Medium
]

% 设置中文字体
\setCJKmainfont{SourceHanSansCN}[
    Path = Font/,
    Extension = .otf,
    UprightFont = *-Regular,
    BoldFont = *-Bold,
    ItalicFont = *-Light,
    BoldItalicFont = *-Medium
]

% 定义字体切换命令
\newcommand{\light}{\CJKfontspec[Path = Font/]{SourceHanSansCN-Light.otf}}
\newcommand{\normal}{\CJKfontspec[Path = Font/]{SourceHanSansCN-Normal.otf}}
\newcommand{\regular}{\CJKfontspec[Path = Font/]{SourceHanSansCN-Regular.otf}}
\newcommand{\medium}{\CJKfontspec[Path = Font/]{SourceHanSansCN-Medium.otf}}
\newcommand{\bold}{\CJKfontspec[Path = Font/]{SourceHanSansCN-Bold.otf}}
\newcommand{\heavy}{\CJKfontspec[Path = Font/]{SourceHanSansCN-Heavy.otf}}

% 页面布局设置
\geometry{a4paper, left=1.5cm, right=1.5cm, top=1.5cm, bottom=1.5cm, nohead}

% 设置行间距
\renewcommand{\baselinestretch}{1.15}

% 定义分隔线
\newcommand{\separator}{
    \vspace{-0.8em}
    \textcolor{MainColor}{\rule{\linewidth}{0.5pt}}
    \vspace{-0.8em}
}

% 节标题格式设置
\titleformat{\section}{\Large\bold\color{MainColor}}{}{0em}{}[\separator]
\titlespacing*{\section}{0pt}{*3.0}{*1.0}

\titleformat{\subsection}{\large\medium\color{SecondaryColor}}{}{0em}{}
\titlespacing*{\subsection}{0pt}{*1.2}{*0.5}

% 自定义命令
\newcommand{\resumeItem}[1]{\item #1}

\newcommand{\dateSpan}[2]{#1 -- #2}

\newcommand{\role}[2]{{\medium #1} \hfill {\color{SecondaryColor}#2}}

\newcommand{\resumeName}[1]{
    \centerline{\Huge\bold\color{MainColor}{#1}}
    \vspace{1ex}
}

\newcommand{\contactInfo}[4]{
    \centerline{
        \color{MainColor}
        \faIcon{phone} #1 \quad
        \faIcon{envelope} \href{mailto:#2}{#2} \quad
        \faIcon{globe} \href{https://#3}{#3} \quad
        \faIcon{github} \href{https://#4}{#4}
    }
    \vspace{1ex}
}

\newcommand{\sectionTitle}[2]{
    \section{\texorpdfstring{\faIcon{#1}}{} #2}
}

\newcommand{\educationEntry}[4]{
    \subsection{#1}
    \role{#2}{#3}
    #4
    \vspace{0.5ex}
}

\newcommand{\workEntry}[4]{
    \subsection{#1}
    \role{#2}{\dateSpan{#3}{#4}}
}

\newcommand{\projectEntry}[3]{
    \subsection{#1}
    \role{#2}{#3}
}

\newcommand{\skillSection}[2]{
    \textbf{\color{MainColor}#1:} #2\par\vspace{0.5em}
}

% 添加页眉页脚
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{\thepage}