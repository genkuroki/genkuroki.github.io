%%
%% CLASS FILE FOR PROCEDINGS OF MSJ ANNUAL/AUTUMN MEETINGS
%%
%% Copyright (C) 2009- Mathematical Society Japan
%%
%%    web: http://mathsoc.jp/meeting/texstyle/
%% e-mail: texstyle@mathsoc.jp
%%
%% [HISTORY]
%% 2011/10/31  v1.0.1  ignore \enlargethispage
%% 2011/10/27  v1.0.0  new page layout
%% 2010/02/09  v0.9.7  bugfix of '_' in math-mode
%% 2009/12/19  v0.9.6  support \tableofcontents
%%                     modify theorem style in Japanese mode
%% 2009/12/18  v0.9.5  support \email, \webpage commands
%% 2009/12/17  v0.9.4  support \date, \address commands, 
%%                     AMS like abstract environment
%% 2009/12/16  v0.9.3  support 'kikaku' option
%% 2009/12/15  v0.9.2  support bibtex/jbibtex, support 'kikaku' format
%% 2009/11/24  v0.9.1  typeset article head with 12pt mode
%% 2009/11/20  v0.9
%% 2009/09/14  v0.1  
%%
\NeedsTeXFormat{LaTeX2e}[2003/12/01]
\ProvidesClass{msjproc}[2011/10/31]
\newcommand\msjprocversion{1.0.1}
\typeout{## Class file for Proceedings of MSJ Annual/Autumn Meetings}
\typeout{## MSJPROC.CLS version \msjprocversion}
\typeout{## Copyright (C) 2009- Mathematical Society Japan}

%%
%% CHECK PLATEX / ORIGINAL LATEX
%%
\newif\if@ptex 
\expandafter\ifx\csname jfam\endcsname\relax\@ptexfalse
\else\@ptextrue\fi

%%
%% TOOLS
%%
\long\def\@msj@append#1#2{%
  \expandafter\long\expandafter\def\expandafter#1\expandafter{#1#2}}
\long\def\@msj@ifempty#1#2#3{%
  \expandafter\ifx\csname#1\endcsname\@empty\def\@msj@next{#2}%
  \else\def\@msj@next{#3}\fi
  \@msj@next}
\def\@msj@setcounter#1#2{%
  \expandafter\xdef\csname @msj@c@#1\endcsname{#2}}
\def\@msj@value#1{\csname @msj@c@#1\endcsname}
\def\@msj@newcounter#1{\@msj@setcounter{#1}{0}}
\def\@msj@addtocounter#1#2{%
  \@tempcnta=\@msj@value{#1}\relax
  \advance\@tempcnta by #2\relax
  \@msj@setcounter{#1}{\the\@tempcnta}}
\def\@msj@ifnum#1#2#3{%
  \ifnum#1\relax\long\def\next{#2}%
  \else\long\def\next{#3}\fi
  \next}

%%
%% DEFAULT PAPER SIZE
%%
\def\@msj@textwidth{155truemm}
\def\@msj@textheight{247truemm}
\def\@msj@topmargin{-0.4truemm}
\def\@msj@headheight{0truemm}
\def\@msj@headsep{0truemm}
\def\@msj@evensidemargin{2.1truemm}
\def\@msj@oddsidemargin{2.1truemm}
\def\@msj@footskip{5truemm}
\def\@msj@titlesep{12pt}

%%
%% CLASS OPTIONS
%%
\newcommand\@@ptsize{12pt}
\DeclareOption{english}{\@ptexfalse}
\DeclareOption{draft}{\OptionNotUsed}
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption{12pt}{\def\@@ptsize{12pt}}
\DeclareOption{11pt}{\def\@@ptsize{11pt}}
\DeclareOption{10pt}{\def\@@ptsize{10pt}}
\DeclareOption{kikaku}{\def\@msj@titlesep{12pt}}
\DeclareOption{sougou}{\ExecuteOptions{kikaku}}%
\ProcessOptions

%%
%% INCLUDE BASE CLASS-FILE
%%
\if@ptex
  \LoadClass[a4j,\@@ptsize,twoside]{jarticle}%
\else
  \LoadClass[a4paper,\@@ptsize,twoside]{article}%
\fi

%%
%% SETTING OF METRICS
%%
\textwidth=\@msj@textwidth
\textheight=\@msj@textheight
\headsep=\@msj@headsep
\headheight=\@msj@headheight
\topmargin=\@msj@topmargin
\evensidemargin=\@msj@evensidemargin
\oddsidemargin=\@msj@oddsidemargin
\footskip=\@msj@footskip
\topsep=1ex plus 0.5ex minus 0.1ex

%%
%% MAKETITLE
%%
\renewcommand\maketitle{\par
  \begingroup
    \newpage
    \global\@topnum\z@
    \@maketitle
    %%%% title information
    \bgroup
      \@titleinfo
    \egroup
    \bgroup
      \ifnum\c@author=1
        \def\thefootnote{\@fnsymbol\c@footnote}%
      \else
        \def\thefootnote{\@fnasternum\c@footnote}%
      \fi
      \@authorfootnote
    \egroup
    \@titlefootnote
  \endgroup
  \ifx\@abstract\@empty\else\@abstract\fi
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\lecturetype\relax
  \global\let\and\relax
  \renewenvironment{abstract}%
    {\begin{abstract@box}}%
    {\end{abstract@box}\@abstract}%
  \thispagestyle{msjtoppage}%
}

\def\@maketitle{%
  \let\footnote@orig\footnote
  \let\footnote\titlefootnote
  \setlength\parskip{\@msj@titlesep}%
  \setlength\topsep{0pt}%
  \setlength\partopsep{0pt}%
  \begin{center}
    %%%% 12pt mode
    \@settitlefont
    \begin{minipage}[c]{135mm}%
      \centering
      \Large
      \setlength\baselineskip{21pt}%
      \setlength\lineskiplimit{4pt}%
      \setlength\lineskip{4pt}%
      \setlength\parskip{3pt}%
      \setlength\parsep{0pt}%
      \@title
      \ifx\@subtitle\@empty\else
        \par
	\@tempdima=\@msj@titlesep
        \vskip0.5\@tempdima
        \large
        \setlength\baselineskip{16pt}%
        \setlength\lineskiplimit{2pt}%
        \setlength\lineskip{2pt}%
        \@subtitle
      \fi
    \end{minipage}
    \par
    %%%% list of authors
    \authorslist
    \par
    \let\footnote\footnote@orig
    %%%% date
    \if\@date\@empty\else\@date\fi
  \end{center}%
  \vspace{\@msj@titlesep}%
}

\def\@settitlefont{%
  \renewcommand\normalsize{%
    \@setfontsize\normalsize\@xiipt{16.5}%
    \abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
    \abovedisplayshortskip \z@ \@plus3\p@
    \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
    \belowdisplayskip \abovedisplayskip
    \let\@listi\@listI}%
  \renewcommand\small{%
    \@setfontsize\small\@xipt{13.6}%
    \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
    \abovedisplayshortskip \z@ \@plus3\p@
    \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
    \def\@listi{\leftmargin\leftmargini
      \topsep 9\p@ \@plus3\p@ \@minus5\p@
      \parsep 4.5\p@ \@plus2\p@ \@minus\p@
      \itemsep \parsep}%
    \belowdisplayskip \abovedisplayskip}%
  \renewcommand\footnotesize{%
    \@setfontsize\footnotesize\@xpt\@xiipt
    \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
    \abovedisplayshortskip \z@ \@plus3\p@
    \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
    \def\@listi{\leftmargin\leftmargini
      \topsep 6\p@ \@plus2\p@ \@minus2\p@
      \parsep 3\p@ \@plus2\p@ \@minus\p@
      \itemsep \parsep}%
    \belowdisplayskip \abovedisplayskip}%
  \renewcommand\scriptsize{\@setfontsize\scriptsize\@viiipt{9.5}}%
  \renewcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}%
  \renewcommand\large{\@setfontsize\large\@xivpt{21}}%
  \renewcommand\Large{\@setfontsize\Large\@xviipt{25}}%
  \renewcommand\LARGE{\@setfontsize\LARGE\@xxpt{28}}%
  \renewcommand\huge{\@setfontsize\huge\@xxvpt{33}}%
  \let\Huge=\huge
  \setlength\parindent{0\p@}%
  \setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}%
  \setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}%
  \setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}%
  \normalsize}

%%
%% FOOTNOTE
%%
\renewcommand\@makefnmark{%
  \@textsuperscript{\normalfont\@thefnmark}}%
\renewcommand\@makefntext[1]{%
  \leftskip=1.1em
  \parindent=0em
  \noindent
  \hb@xt@0em{\hss\@makefnmark\kern0.1em}#1}
\newcommand\@titleinfo{{%
  \def\@makefntext##1{%
    \leftskip=0em \parindent=0em \noindent##1}
  \let\@makefnmark\relax
  \let\@thefnmark\relax
  \ifx\@thanks\@empty\else
    \@footnotetext{\@thanks}\fi
  \ifx\@subjclass\@empty\else
    \@footnotetext{\@subjclass}\fi
  \ifx\@keywords\@empty\else
    \@footnotetext{\@keywords}\fi}}
\def\titlefootnote#1{\footnotemark
  \protected@xdef\@titlefootnote{\@titlefootnote
    \protect\footnotetext[\the\c@footnote]{#1}}}
\let\@titlefootnote\@empty
\def\authorfootnote#1{\footnotemark
  \protected@xdef\@authorfootnote{\@authorfootnote
    \protect\footnotetext[\the\c@footnote]{#1}}}
\let\@authorfootnote\@empty
\def\abstractfootnote#1{\footnotemark
  \protected@xdef\@abstractfootnote{\@abstractfootnote
    \protect\footnotetext[\the\c@footnote]{#1}}}
\let\@abstractfootnote\@empty
\newcommand\@fnasternum[1]{\ensuremath{*}\the#1}
\newcommand\@fnasters[1]{\ensuremath{\ifcase#1\or 
  {*}\or {*}{*}\or {*}{*}{*}\or {*}{*}{*}{*}\or 
  {*}\the#1\fi}}

%%
%% SUBTITLE COMMAND
%%
\newcommand\subtitle[1]{%
  \def\@subtitle{#1}}
\let\@subtitle\@empty

%%
%% AUTHOR / ADDRESS / EMAIL / WEBPAGE COMMAND
%%
\let\@author\@empty
\newcounter{author}
\setcounter{author}{0}
\renewcommand\author[2]{%
  \addtocounter{author}{1}%
  \@namedef{author\the\c@author}{#1}%
  \@namedef{affil\the\c@author}{#2}}%
\newcommand\address[1]{%
  \@namedef{address\the\c@author}{#1}}
\newcommand\email{%
  \catcode`\_=12
  \@xemail}
\newcommand\@xemail[1]{%
  \catcode`\_=8
  \@namedef{email\the\c@author}{\texttt{#1}}}
\newcommand\webpage{%
  \catcode`\_=12 \catcode`\~=12 \catcode`\#=12 \catcode`\%=12
  \@xwebpage}
\newcommand\@xwebpage[1]{%
  \catcode`\_=8 \catcode`\~=13 \catcode`\#=6 \catcode`\%=14
  \@namedef{webpage\the\c@author}{\texttt{#1}}}
%%%% list of authors (tabular environment)
\newcommand\authorslist{{%
  \let\footnote\authorfootnote
  \ifnum\c@author=1
    \def\thefootnote{\@fnsymbol\c@footnote}%
  \else
    \def\thefootnote{\@fnasternum\c@footnote}%
  \fi
  \@msj@setcounter{footnote}{\the\value{footnote}}%
  \setcounter{footnote}{0}%
  \let\@msj@alist\@empty
  \@authorslist{1}%
  \setlength\tabcolsep{0pt}%
  \begin{tabular}{lll}%
  \@msj@alist
  \end{tabular}%
  \setcounter{footnote}{\@msj@value{footnote}}}}
\newcommand\@authorslist[1]{%
  \@msj@setcounter{i}{#1}%
  \@msj@addtocounter{i}{1}%
  \makeauthorfootnote{#1}%
  \ifx\@msj@afnt\@empty
    \@msj@ifempty{affil#1}%
      {\@msj@append\@msj@alist{%
        \multicolumn{3}{l}{\@nameuse{author#1}}}}%
      {\@msj@append\@msj@alist{%
        \@nameuse{author#1}&\hbox to1em{\hss}&(\@nameuse{affil#1})}}%
    \else
    \@msj@ifempty{affil#1}%
      {\@msj@append\@msj@alist{%
        \multicolumn{3}{l}{\@nameuse{author#1}%
        \footnote{\@nameuse{afnt#1}}}}}%
      {\@msj@append\@msj@alist{%
        \@nameuse{author#1}&\hbox to1em{\hss}&(\@nameuse{affil#1})%
        \footnote{\@nameuse{afnt#1}}}}%
  \fi
  \ifnum#1<\the\value{author}\relax
    \@msj@append\@msj@alist{\\ }%
    \xdef\@msj@next{\noexpand\@authorslist{\@msj@value{i}}}%
  \else\let\@msj@next\relax\fi%
  \@msj@next}
%%%% author's footnote
\newcommand\makeauthorfootnote[1]{%
  \let\@msj@afnt\@empty
  \@ifundefined{address#1}{}{%
    \@msj@append\@msj@afnt{\@nameuse{address#1}}}%
  \@ifundefined{email#1}{}{%
    \@msj@ifempty{@msj@afnt}{}{\@msj@append\@msj@afnt{\protect\\}}%
    \@msj@append\@msj@afnt{e-mail:~\@nameuse{email#1}}}
  \@ifundefined{webpage#1}{}{%
    \@msj@ifempty{@msj@afnt}{}{\@msj@append\@msj@afnt{\protect\\}}%
    \@msj@append\@msj@afnt{web:~\@nameuse{webpage#1}}}%
  \expandafter\protected@xdef\csname afnt#1\endcsname{\@msj@afnt}}

%%
%% KEYWOARDS / AMS SUBJECT CLASSIFICATION
%%
\if@ptex
  \newcommand\keywordsname{\char\jis"252D\char\jis"213C\char\jis"256F%
    \char\jis"213C\char\jis"2549\char\jis"2127}%
  \newcommand\@msj@punct{}%
\else
  \newcommand\keywordsname{Keywords:\ }%
  \newcommand\@msj@punct{.}%
\fi
\newcommand*\keywords[1]{%
  \def\@keywords{\keywordsname#1\@msj@punct}\ignorespaces}
\newcommand*\subjclass[2][2000]{%
  \ifnum#1=1991\else\ifnum#1=2000\else\ifnum#1=2010\else
  \@latex@error{Unknown edition (#1) of 
    Mathematics Subject Classification}\fi\fi\fi
  \def\@subjclass{#1 Mathematics Subject Classification: #2\@msj@punct}%
    \ignorespaces}
\let\@keywords\@empty
\let\@subjclass\@empty

%%
%% DATE / THANKS
%%
\let\@date\@empty
\renewcommand\thanks[1]{\def\@thanks{#1}}
\let\@thanks\@empty

%%
%% LECTURE TYPE
%%
\newcommand\lecturetype[1]{\def\@lecturetype{#1}}
\let\@lecturetype\@empty

%%
%% ABSTRACT ENVIRONMENT
%%
\if@ptex
  \renewcommand\abstractname{%
    \char\jis"3335\hspace{2zw}\char\jis"4D57}
\else
  \renewcommand\abstractname{Abstract}
\fi
\newbox\abstractbox
\renewenvironment{abstract}{\begin{abstract@box}}%
  {\end{abstract@box}\ignorespaces}
\long\def\abstract@box{%
  \let\footnote\abstractfootnote
  \global\setbox\abstractbox=\vbox\bgroup
  \small
  \setlength\topsep{0pt}%
  \setlength\parskip{0pt}%
  \setlength\partopsep{0pt}%
  \list{}{%
    \setlength\listparindent{\parindent}%
    \setlength\itemindent{0pt}%
    \setlength\leftmargin{15mm}%
    \setlength\rightmargin{15mm}%
    \setlength\topsep{0pt}%
    \setlength\partopsep{0pt}%
    \setlength\parsep{0.5ex}%
    \setlength\parskip{0pt}}%
    \setlength\parindent{0pt}%
    \item\relax
    \begin{center}%
      \textbf{\abstractname}%
    \end{center}%
    \par\ignorespaces}
\def\endabstract@box{%
  \endlist\egroup
  \global\def\@abstract{%
    \parskip=0pt
    \parsep=0pt
    \partopsep=0pt
    \begin{center}
      \box\abstractbox
      \@abstractfootnote
      \hrule height 0pt depth 0pt
    \end{center}
    \vspace{\@msj@titlesep}%
  }%
}
\let\@abstract\@empty

%%
%% SECTION / SUBSECTION / SUBSUBSECTION 
%% PARAGRAPH / SUBPARAGRAPH
%%
\def\@seccntformat#1{\csname the#1\endcsname.\ }
\renewcommand\section{\@startsection{section}{1}{\z@}
  {-1.2ex \@plus -.2ex \@minus -.2ex}%
  {0.5ex \@plus.2ex}%
  {\normalfont\large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
  {-1.2ex\@plus -.2ex \@minus -.2ex}%
  {0.5ex \@plus .2ex}%
  {\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
  {-1.2ex\@plus -.2ex \@minus -.2ex}%
  {0.5ex \@plus .2ex}%
  {\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
  {.6ex \@plus .2ex \@minus .2ex}%
  {-1em}%
  {\normalfont\normalsize\mdseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
  {0ex \@plus .2ex \@minus 0ex}%
  {-1em}%
  {\normalfont\normalsize\mdseries}}

%%
%% TABLE OF CONTENTS
%%
\if@ptex
  \def\numberline#1{\hbox to\@lnumwidth{#1.\hfil}}
  \renewcommand\contentsname{%
    \char\jis"4C5C\hspace{2zw}\char\jis"3C21}
\else
  \def\numberline#1{\hb@xt@\@tempdima{#1.\hfil}}
  \renewcommand\contentsname{Contents}
\fi
\renewcommand{\tableofcontents}{%
  \bgroup
  \small
  \topsep=0pt 
  \list{}{%
    \setlength\topsep{\@msj@titlesep}%
    \setlength\leftmargin{15mm}%
    \setlength\rightmargin{15mm}}
  \item
    \topsep=0pt 
    \begin{center}
      \textbf{\contentsname}%
    \end{center}
    \parskip=0pt
    \@starttoc{toc}
  \endlist
  \egroup}
\renewcommand*{\l@section}[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty{\@secpenalty}%
    \begingroup
      \parindent\z@ 
      \rightskip\@pnumwidth 
      \parfillskip-\rightskip
      \leavevmode
      \if@ptex
        \setlength\@lnumwidth{1.5em}%
        \advance\leftskip\@lnumwidth
      \else
        \setlength\@tempdima{1.5em}%
        \advance\leftskip\@tempdima
      \fi
      \hskip-\leftskip
      #1\nobreak\hfil\nobreak\hbox to\@pnumwidth{\hss#2}\par
    \endgroup
  \fi}

%%
%% NEWTHEOREM
%%
\if@ptex
  \renewcommand\@begintheorem[2]{\trivlist
   \item[\hskip\labelsep{\bfseries #1\ #2}]\upshape}
  \renewcommand\@opargbegintheorem[3]{\trivlist
    \item[\hskip\labelsep{\bfseries #1\ #2\ (#3)}]\upshape}
\fi

%%
%% THEBIBLIOGRAPHY ENVIRONMENT
%%
\def\@openbib@code{%
  \smallskip
  \small
  \setlength\itemsep{0.5ex}%
  \setlength\parsep{0pt}%
  \setlength\parskip{0ex}}

%%
%% PAGE-STYLE
%%
\let\ps@plain\@undefined
\let\ps@bothstyle\@undefined
\let\ps@headings\@undefined
\let\ps@myheadings\@undefined
\let\ps@headnombre\@undefined
\let\ps@footnombre\@undefined
\def\ps@msjtoppage{%
  \let\@mkboth\@gobbletwo
  \def\@oddhead{%
    \@setfontsize\normalsize\@xiipt{16.5}%
    \hspace{-5mm}\rm\@lecturetype\hss}%
  \let\@evenhead\@oddhead
  \let\@oddfoot\@empty
  \let\@evenfoot\@empty}
\pagestyle{empty}

%%
%% DISABLED COMMANDS
%%
\def\enlargethispage{%
  \@latex@error{\noexpand\enlargethispage is disable in this class file}}

%%
%% PREAMBLE PROCEDURE
%%
\AtBeginDocument{\@ptexfontsubstitution}
\newcommand\@ptexfontsubstitution{%
  \if@ptex
    \DeclareFontShape{JY1}{mc}{m}{it}{<->ssub*mc/m/n}{}
    \DeclareFontShape{JY1}{gt}{m}{it}{<->ssub*gt/m/n}{}
    \DeclareFontShape{JT1}{mc}{m}{it}{<->ssub*mc/m/n}{}
    \DeclareFontShape{JT1}{gt}{m}{it}{<->ssub*gt/m/n}{}
    \DeclareFontShape{JY1}{mc}{m}{sc}{<->ssub*mc/m/n}{}
    \DeclareFontShape{JY1}{gt}{m}{sc}{<->ssub*gt/m/n}{}
    \DeclareFontShape{JT1}{mc}{m}{sc}{<->ssub*mc/m/n}{}
    \DeclareFontShape{JT1}{gt}{m}{sc}{<->ssub*gt/m/n}{}
    \setlength\xkanjiskip{.15zw plus .15zw minus .05zw}
    \def\if@deluxe@otf{\ifx\relax\relax}%
    \@ifpackageloaded{otf}{%
      \def\if@deluxe@otf{\if@deluxe}%
      \if@deluxe@otf
        \DeclareFontShape{\otf@JYn}{hmc}{m} {it}{<->s*[\utf@sc@le]\otf@pfx@ nmlminr-h}{}
        \DeclareFontShape{\otf@JYn}{hmc}{m} {sl}{<->s*[\utf@sc@le]\otf@pfx@ nmlminr-h}{}
        \DeclareFontShape{\otf@JYn}{hmc}{m} {sc}{<->s*[\utf@sc@le]\otf@pfx@ nmlminr-h}{}
        \DeclareFontShape{\otf@JTn}{hmc}{m} {it}{<->s*[\utf@sc@le]\otf@pfx@ nmlminr-v}{}
        \DeclareFontShape{\otf@JTn}{hmc}{m} {sl}{<->s*[\utf@sc@le]\otf@pfx@ nmlminr-v}{}
        \DeclareFontShape{\otf@JTn}{hmc}{m} {sc}{<->s*[\utf@sc@le]\otf@pfx@ nmlminr-v}{}
        \DeclareFontShape{\otf@JYn}{hmc}{bx}{it}{<->s*[\utf@sc@le]\otf@pfx@ nmlminb-h}{}
        \DeclareFontShape{\otf@JYn}{hmc}{bx}{sl}{<->s*[\utf@sc@le]\otf@pfx@ nmlminb-h}{}
        \DeclareFontShape{\otf@JYn}{hmc}{bx}{sc}{<->s*[\utf@sc@le]\otf@pfx@ nmlminb-h}{}
        \DeclareFontShape{\otf@JTn}{hmc}{bx}{it}{<->s*[\utf@sc@le]\otf@pfx@ nmlminb-v}{}
        \DeclareFontShape{\otf@JTn}{hmc}{bx}{sl}{<->s*[\utf@sc@le]\otf@pfx@ nmlminb-v}{}
        \DeclareFontShape{\otf@JTn}{hmc}{bx}{sc}{<->s*[\utf@sc@le]\otf@pfx@ nmlminb-v}{}
        \DeclareFontShape{\otf@JYn}{hgt}{m} {it}{<->s*[\utf@sc@le]\otf@pfx@ nmlgothr-h}{}
        \DeclareFontShape{\otf@JYn}{hgt}{m} {sl}{<->s*[\utf@sc@le]\otf@pfx@ nmlgothr-h}{}
        \DeclareFontShape{\otf@JYn}{hgt}{m} {sc}{<->s*[\utf@sc@le]\otf@pfx@ nmlgothr-h}{}
        \DeclareFontShape{\otf@JTn}{hgt}{m} {it}{<->s*[\utf@sc@le]\otf@pfx@ nmlgothr-v}{}
        \DeclareFontShape{\otf@JTn}{hgt}{m} {sl}{<->s*[\utf@sc@le]\otf@pfx@ nmlgothr-v}{}
        \DeclareFontShape{\otf@JTn}{hgt}{m} {sc}{<->s*[\utf@sc@le]\otf@pfx@ nmlgothr-v}{}
        \DeclareFontShape{\otf@JYn}{hgt}{bx}{it}{<->s*[\utf@sc@le]\otf@pfx@ nmlgothb-h}{}
        \DeclareFontShape{\otf@JYn}{hgt}{bx}{sl}{<->s*[\utf@sc@le]\otf@pfx@ nmlgothb-h}{}
        \DeclareFontShape{\otf@JYn}{hgt}{bx}{sc}{<->s*[\utf@sc@le]\otf@pfx@ nmlgothb-h}{}
        \DeclareFontShape{\otf@JTn}{hgt}{bx}{it}{<->s*[\utf@sc@le]\otf@pfx@ nmlgothb-v}{}
        \DeclareFontShape{\otf@JTn}{hgt}{bx}{sl}{<->s*[\utf@sc@le]\otf@pfx@ nmlgothb-v}{}
        \DeclareFontShape{\otf@JTn}{hgt}{bx}{sc}{<->s*[\utf@sc@le]\otf@pfx@ nmlgothb-v}{}
      \else
        \DeclareFontShape{JY1}{hmc}{m}{it}{<->ssub*mc/m/n}{}
        \DeclareFontShape{JY1}{hgt}{m}{it}{<->ssub*gt/m/n}{}
        \DeclareFontShape{JT1}{hmc}{m}{it}{<->ssub*mc/m/n}{}
        \DeclareFontShape{JT1}{hgt}{m}{it}{<->ssub*gt/m/n}{}
        \DeclareFontShape{JY1}{hmc}{m}{sc}{<->ssub*mc/m/n}{}
        \DeclareFontShape{JY1}{hgt}{m}{sc}{<->ssub*gt/m/n}{}
        \DeclareFontShape{JT1}{hmc}{m}{sc}{<->ssub*mc/m/n}{}
        \DeclareFontShape{JT1}{hgt}{m}{sc}{<->ssub*gt/m/n}{}
      \fi
    }{}%
  \fi
}

%%
%% POSTAMBLE PROCEDURE
%%
\AtEndDocument{\@checkpagesize}
\newcommand\@checkpagesize{%
  \ifdim\textwidth=\@msj@textwidth\else
    \@latex@error{Do not change \string\textwidth.}\fi
  \ifdim\textheight=\@msj@textheight\else
    \@latex@error{Do not change \string\textheight.}\fi
  \ifdim\headsep=\@msj@headsep\else
    \@latex@error{Do not change \string\headsep.}\fi
  \ifdim\headheight=\@msj@headheight\else
    \@latex@error{Do not change \string\headheight.}\fi
  \ifdim\topmargin=\@msj@topmargin\else
    \@latex@error{Do not change \string\topmargin.}\fi
  \ifdim\evensidemargin=\@msj@evensidemargin\else
    \@latex@error{Do not change \string\evensidemargin.}\fi
  \ifdim\oddsidemargin=\@msj@oddsidemargin\else
    \@latex@error{Do not change \string\oddsidemargin.}\fi
  \ifdim\footskip=\@msj@footskip\else
    \@latex@error{Do not change \string\footskip.}\fi
}
\endinput
