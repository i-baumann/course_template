%%%%%
% Notes Class

% Defines a document class for course notes and study guides

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{paper_class}[2025 paper template]

% for header settings
\PassOptionsToPackage{twoside}{fancyhdr}

% load article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[a4paper]{article}

%%%%%
% Packages and other settings

\RequirePackage{course_template}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage[a4paper, total={6in, 8in}]{geometry}

% fix for silence/authblk interaction
\RequirePackage{etoolbox}
\makeatletter
\robustify\@latex@warning@no@line
\makeatother
\RequirePackage[noblocks]{authblk}

% Define commands for document information
\makeatletter
\def\@papertitle        {\symbol{92}papertitle}
\def\@papersubtitle     {\symbol{92}papersubtitle (optional)}
\def\@papershorttitle   {\symbol{92}papershorttitle}
\def\@paperthanks       {\symbol{92}paperthanks}
\def\@papershortauthors {\symbol{92}papershortauthors}
\def\@paperabstract     {\symbol{92}paperabstract (optional)}

\newcommand  {\papertitle}        [1]{\def\@papertitle        {#1}}
\newcommand  {\papersubtitle}     [1]{\def\@papersubtitle     {#1}}
\newcommand  {\papershorttitle}   [1]{\def\@papershorttitle   {#1}}
\newcommand  {\paperthanks}       [1]{\def\@paperthanks       {#1}}
\newcommand  {\papershortauthors} [1]{\def\@papershortauthors {#1}}
\newcommand  {\paperabstract}     [1]{\def\@paperabstract     {#1}}

\newcommand{\ifnotempty}[3]{
  \ifthenelse{\equal{#1}{}}{#3}{#2}
}
% \newcommand{\processsubtitle}{
%     \newline
% \ifnotempty{\@papersubtitle}{\\ \Large \rmfamily \@papersubtitle}{}
%     \ifnotempty{\@papersubtitle}{\\ \Large \@papersubtitle}{}
% }
\newcommand{\processthanks}{
  % \ifnotempty{\@paperthanks}{\rmfamily\!\!\!\!\footnote{\@paperthanks}}{}
  \ifnotempty{\@paperthanks}{\footnote{\@paperthanks}}{}
}

\RequirePackage{changepage}

\newcommand{\makepapertitle} {
  \renewcommand*{\thefootnote}{\fnsymbol{footnote}}
  \newpage
  \null
  \vfill

  \begin{center}%
    % {\LARGE \rmfamily
    % \@papertitle\ifnotempty{\@papersubtitle}{}{\processthanks}}
    % {\LARGE \@papertitle\ifnotempty{\@papersubtitle}{}{\processthanks}}
    % {\processsubtitle\ifnotempty{\@papersubtitle}{\processthanks}{}}
    {\LARGE \@papertitle \\}
    \vskip 0.25 em %
    {\Large \@papersubtitle}
    \vskip 0.25 em %
    {\@author \\}
    \vskip 1em%
    {\@date}%
  \end{center}%
  \vfill

  \ifnotempty{\@paperabstract}{    %
    \begin{adjustwidth}{0.5in}{0.5in}
      \small \itshape \@paperabstract
    \end{adjustwidth}
    \vfill
  }{}

  \clearpage

  \renewcommand*{\thefootnote}{\arabic{footnote}}
  \setcounter{footnote}{0}
}

\makeatother

\fancypagestyle{firstpage}{
  \fancyhf{}
  \setlength{\headsep}{11pt}
  \setlength{\footskip}{0pt}
  \renewcommand{\headrulewidth}{0pt} % removes horizontal header line
}

\makeatletter
\AtBeginDocument{

  \pagestyle{fancy}
  \fancyhf{}
  \setlength{\headsep}{11pt}
  \setlength{\footskip}{0pt}
  %  \fancyhead[R]{\@name}
  %  \fancyhead[L]{\@memotitle}
  %  \fancyfoot[L]{\small\@date}
  %  \fancyfoot[R]{\small\thepage}
  % \fancyhead[EL, OR]{\rmfamily \small\thepage}
  \fancyhead[EL, OR]{\small\thepage}
  % \fancyhead[EC]{\rmfamily \small\@papershorttitle}
  % \fancyhead[OC]{\rmfamily \small\@papershortauthors}
  %  \renewcommand{\headrulewidth}{0pt} % removes horizontal header line

  \thispagestyle{firstpage}

  \setlength{\parskip}{11pt}
  %  \setlist[1]{before=\vspace{-11pt}, after=\vspace{-11pt}}

}
\makeatother
\RequirePackage{hyperref}
\RequirePackage[nameinlink]{cleveref}

\endinput
