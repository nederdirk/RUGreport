%---verslag class---
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{RUGreport}[2013/06/11 First draft]

%\DeclareOption{fancy}{
%	\RequirePackage{fancyhdr}
%}

% this class extends the article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ExecuteOptions{10pt,twoside,a4paper}

\ProcessOptions\relax
\LoadClass{article}

% use some packages
\RequirePackage[pdftex]{graphicx}
\RequirePackage{epstopdf}
\RequirePackage{subcaption}

\RequirePackage{listings}
\RequirePackage{color}

\RequirePackage{ifthen}

\RequirePackage{amsmath}


\newcommand{\specialref}[1] {\ifthenelse{\equal{\thepage}{\pageref{#1}}}{\autoref{#1}}{\autoref{#1} on page \pageref{#1}}}

\definecolor{MyYellow}{rgb}{1,1,0.80}
\lstset{
	language=C++,
	backgroundcolor=\color{MyYellow},
	basicstyle=\footnotesize\ttfamily,
	numberstyle=\footnotesize,
	numbers=none,
	stepnumber=1,
	numbersep=5pt,
	breaklines=false,
	frame=lines,
	tabsize=2,
	captionpos=b,
	columns=fixed
}

\newcommand{\sourcefile}[2] {
\lstinputlisting[label=list:#1,caption=#1]{#2}
}

\AtBeginDocument{
\numberwithin{lstlisting}{section}

\maketitle
}

\usepackage[pdfborder={0 0 0}]{hyperref}%needs to be last

