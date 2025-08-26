%%%%%
% Notes Class

% Defines a document class for course notes and study guides

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notes_class}[2025 notes and review template class]

% Load article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

%%%%%
% Packages

\RequirePackage{course_template}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}

%%%%%
% Course-specific info

% Define commands to set document information
\makeatletter
\def\@classnum   {Class Number}
\def\@subject    {Class Subject}
\def\@name       {Student Name}
\def\@notetype   {Course Notes}
\def\@email      {Student Email} % Not used
\def\@instructors{Class Assignment} % Not used
\def\@semester   {Class Semester} % Not used

% Define user-friendly interface
\newcommand  {\classnum}   [1]{\def\@classnum   {#1}}
\newcommand  {\subject}    [1]{\def\@subject    {#1}}
\newcommand  {\name}       [1]{\def\@name       {#1}}
\newcommand  {\notetype}   [1]{\def\@notetype   {#1}}
\newcommand  {\email}      [1]{\def\@email      {#1}} % Not used
\newcommand  {\instructors}[1]{\def\@instructors{#1}} % Not used
\newcommand  {\semester}   [1]{\def\@semester   {#1}} % Not used

%%%%%
% Typesetting settings

% Section spacing
\titlespacing\section{0pt}{0pt plus 2pt minus 0pt}{0pt plus 2pt minus 0pt}
\titlespacing\subsection{0pt}{0pt plus 2pt minus 0pt}{0pt plus 2pt minus 0pt}
\titlespacing\subsubsection{0pt}{0pt plus 2pt minus 0pt}{0pt plus 2pt minus 0pt}

% Set header formatting
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\sectionmark}[1]{\markboth{#1}{}}
\fancyhead[L]{\leftmark}
\fancyhead[R]{\@classnum}
\cfoot{\thepage}

% Customize maketitle
\makeatletter
 \def\@maketitle{%
  \newpage
  \null
  \vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\LARGE \@notetype: \@classnum \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@name
      \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em}
\makeatother

\endinput