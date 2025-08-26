%%%%%
% Problem Set Class

% Defines a document class for problem sets, including customized headers and footers
% with common packages and several useful math functions

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ps_class}[2025 problem set template class]

% load exam class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{exam}}
\ProcessOptions\relax
\LoadClass{exam}

%%%%%
% Packages

\RequirePackage{course_template}

%%%%%
% Course-specific info

% Define commands to set document information
\makeatletter
\def\@classnum   {Class Number}
\def\@subject    {Class Subject}
\def\@assignment {Assignment Name}
\def\@name       {Student Name}
\def\@email      {Student Email}
\def\@instructors{Class Assignment}
\def\@semester   {Class Semester}
\def\@duedate    {Due Date}

% Define user-friendly interface
\newcommand  {\classnum}   [1]{\def\@classnum   {#1}}
\newcommand  {\subject}    [1]{\def\@subject    {#1}}
\newcommand  {\assignment} [1]{\def\@assignment {#1}}
\newcommand  {\name}       [1]{\def\@name       {#1}}
\newcommand  {\email}      [1]{\def\@email      {#1}}
\newcommand  {\instructors}[1]{\def\@instructors{#1}}
\newcommand  {\semester}   [1]{\def\@semester   {#1}}
\newcommand  {\duedate}    [1]{\def\@duedate    {#1}}

%%%%%
% Headers and footers

% set headers, footers
\pagestyle{headandfoot}
\firstpageheader{\textbf{\@classnum \phantom{} \@semester: \@assignment} 			   \\
				 \@subject						   \\
				 \@instructors
			 	}
				{}
				{\@name 		   \\
				 \texttt{\href{mailto:\@email}{\@email}} \\
				 Due: \@duedate
			 	}
\firstpagefooter{\parbox[t]{0.5\textwidth}
					{
					\small {\@classnum: \@assignment}
					}
				}
{\parbox[t]{0.2\textwidth}{}}
{\parbox[t]{0.3\textwidth}{\small{\hfill \thepage}}}
\firstpageheadrule
\firstpagefootrule


\runningheader{\small {\@classnum: \@assignment}}
			  {}
			  {\small{\hfill \thepage}}
\runningfooter{}
			  {}
			  {}

\runningheadrule
%\runningfootrule

\setlength{\parskip}{11pt}
\extraheadheight[22pt]{0pt}
\extrafootheight{-11pt}
\setlength{\headsep}{6pt}
\setlength{\footskip}{6pt}

%%%%%

\hypersetup{
	colorlinks=true,
	linkcolor=blue,
	filecolor=magenta,
	urlcolor=blue,
}

\setlength{\parindent}{0mm}
\setlength{\parskip}{2mm}

% \setlist[enumerate]{label=({\alph*})}
% \setlist[enumerate, 2]{label=({\roman*})}

\allowdisplaybreaks[1]

\renewcommand{\thepage}{\classnum~\assignment \hfill \arabic{page}}

\makeatletter
\def\points{\@ifnextchar[{\@with}{\@without}}
\def\@with[#1]#2{{\ifthenelse{\equal{#2}{1}}{{[1 point, #1]}}{{[#2 points, #1]}}}}
\def\@without#1{\ifthenelse{\equal{#1}{1}}{{[1 point]}}{{[#1 points]}}}
\makeatother

\newenvironment{problem}[1]{\color{blue} #1}{}

\endinput