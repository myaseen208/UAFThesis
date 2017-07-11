% Don't make any changes in this document.
\LoadClass[a4paper, 12pt, oneside, english]{book}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{UAFThesis}[2017/07/10 UAFThesis Template]

\RequirePackage[intoc]{nomencl}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel} 

%\newcommand{\ra}[1]{\renewcommand{\arraystretch}{#1}}

\RequirePackage{ %
  acronym %
, algorithm %
, algorithmic %
, amsmath %
, amssymb %
, amsthm %
, array   %
%, babel %
, booktabs %
%, breakurl %
, bm       %
, booktabs %
, charter %
, calc    % 
, color %
, colortbl %
, datetime %
, enumitem %
, environ  %
, epsfig %
, epstopdf %
, etoolbox % 
, fancyhdr %
, float %
, geometry %
, graphicx %
, indentfirst %
, listings %
, longtable %
, makecell  %
, makeidx %
, mathptmx %
, multirow %
, pgf      % 
, placeins %
, rotating %
, setspace %
, subfig %
, tabu %
, tabularx % 
, textcomp %
, tikz     %
, times %
, titlesec %
, titletoc %
, titling %
% , tocloft %
%, url     %
, xcolor %
, xpatch % 
 }

\geometry{         % 
     tmargin    = 1.00in %
   , bmargin    = 1.00in %
   , lmargin    = 1.25in %
   , rmargin    = 1.25in %
   }


\RequirePackage[toc, page]{appendix}
\RequirePackage[                %
	unicode           = true    %
  , pdfusetitle                 %
  , bookmarks         = true    %
  , bookmarksnumbered = false   %
  , bookmarksopen     = false   %
  , breaklinks        = false   %
  , pdfborder         = {0 0 1} %
  , backref           = false   %
  , colorlinks        = true    %
  ] {hyperref}
  
\hypersetup{ %
			  linkcolor     = black     %
			, citecolor     = black     %
			, urlcolor      = blue      %
			, filecolor     = blue      %
			, pdfpagelayout = OneColumn %
			, pdfnewwindow  = true      %
			, pdfstartview  = XYZ       %
			, plainpages    = false     %
			, pdfpagelabels             %
			, citecolor     = blue      %
			, linkcolor     = blue      %
			} 
 
\RequirePackage[
  format        = hang      %
, labelfont     = {bf,it}    %
, textfont      = it    %
, tableposition = top   %
, justification = justified %
 ]{caption}


\RequirePackage{ %
  url       %
, breakurl  %
 }
 


\renewcommand{\cftchappresnum}{Chapter}
\AtBeginDocument{\addtolength\cftchapnumwidth{\widthof{\bfseries Chapter}}}

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}
\setlength{\parindent}{40pt}
\setlength{\parskip}{1em}

\makeatletter
\@ifundefined{date}{}{\date{}}


%% Page numbering style and line spacing
\pagestyle{fancy}
\fancyhf{}
 \renewcommand{\headrulewidth}{0pt}
\fancyfoot[RE,RO]{\thepage}
\linespread{1.5}



\titlespacing*{\chapter}{0pt}{-0pt}{20pt}
\titleformat{\chapter}[hang]{\normalfont\itshape\LARGE\bfseries}{\chaptertitlename\ \thechapter:}{20pt}{\LARGE}

\titleformat{\section}
  {\normalfont\itshape\Large\bfseries}{\thesection}{15pt}{\Large}

\titleformat{\subsection}
  {\normalfont\itshape\large\bfseries}{\thesubsection}{15pt}{\large}

\titleformat{\subsubsection}
{\normalfont\itshape\normalsize\bfseries}{\thesubsubsection}{15pt}{\normalsize}


\RequirePackage{titlesec}
\RequirePackage[titles,subfigure]{tocloft}
\RequirePackage{subfigure} 

\renewcommand\cftchapfont{\normalfont\itshape\normalsize\bfseries}
\renewcommand\cftsecfont{\normalfont\itshape\small}
\renewcommand\cftsubsecfont{\normalfont\itshape\footnotesize}
\renewcommand\cftsubsubsecfont{\normalfont\itshape\footnotesize}

\renewcommand\cfttabfont{\normalfont\itshape\small}


% Adjusting spaces for the TOC
\RequirePackage[titles]{tocloft}
\renewcommand{\cftpartleader}{\cftdotfill{\cftdotsep}} % for parts
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}} % for chapters
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}} % for sections
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdotsep}} % for subsections
\setlength{\cftchapnumwidth}{3em}
\renewcommand{\cftchappresnum}{Chapter~~}
\AtBeginDocument{\addtolength\cftchapnumwidth{\widthof{\bfseries Chapter~~}}}
\setlength{\cftsecnumwidth}{2em}


% Prevent double spaced equations
\newenvironment{tightequation}{\begin{equation}}{\end{equation}}




\addto\captionsenglish{% Replace "english" with the language you use
  \renewcommand{\contentsname}%
    {\hfill Table of Contents \hfill}%
}


\addto\captionsenglish{% Replace "english" with the language you use
  \renewcommand{\listfigurename}%
    {\hfill List oF Figures \hfill}%
}



\addto\captionsenglish{% Replace "english" with the language you use
  \renewcommand{\listtablename}%
    {\hfill List of Tables \hfill}%
}

	
\renewcommand{\contentsname}{Table of Contents}
\renewcommand{\listfigurename}{List oF Figures}
\renewcommand{\listtablename}{List of Tables}
\renewcommand{\bibname}{\texorpdfstring{{References\vspace{0mm}}}{References}}


%%Declare bibliography in university style
\RequirePackage[             %
	  style     = authoryear %
	, bibstyle  = authoryear %
	, citestyle = authoryear %
	, natbib    = true       %
	, backend   = biber     %
	, dashed    = false]{biblatex}

\ExecuteBibliographyOptions{hyperref=true, firstinits=true, isbn=false, url=false, backref=false, doi=false, sorting=nyt, minnames=1, maxcitenames=2, maxbibnames=100, block=none}

%italic et al.
\xpatchbibmacro{name:andothers}{%
  \bibstring{andothers}%
}{%
  \bibstring[\emph]{andothers}%
}{}{} 		



% Declare bibliography format
\DeclareFieldFormat{journaltitle}{{#1} \addspace} % journal title
\DeclareFieldFormat[article, inbook, incollection, conference, inproceedings, patent, thesis, unpublished] {title}{#1.\addspace}
  
\DeclareFieldFormat[article]{volume}{#1\addcolon\space} % volume 
\DeclareFieldFormat[article]{pages}{#1.}  % page numbers

\renewcommand\multicitedelim{\textcolor{blue}{\addcomma\space}} % citation separated by comma 
\DeclareFieldFormat[Conference]{publisher}{\textnormal{#1}}


% hyperlink on author year citation 
\ExecuteBibliographyOptions{maxcitenames=1}

\DeclareFieldFormat{citehyperref}{%
  \DeclareFieldAlias{bibhyperref}{noformat}% Avoid nested links
  \bibhyperref{#1}} %

\DeclareFieldFormat{textcitehyperref}{%
  \DeclareFieldAlias{bibhyperref}{noformat}% Avoid nested links
  \bibhyperref{%
    #1 %
    \ifbool{cbx:parens} %
      {\bibcloseparen\global\boolfalse{cbx:parens}} %
      {}}} %

\savebibmacro{cite}
\savebibmacro{textcite}

\renewbibmacro*{cite}{%
  \printtext[citehyperref]{%
    \restorebibmacro{cite}%
    \usebibmacro{cite}}} %

\renewbibmacro*{textcite}{%
  \ifboolexpr{ %
    ( not test {\iffieldundef{prenote}} and %
      test {\ifnumequal{\value{citecount}}{1}} ) %
    or %
    ( not test {\iffieldundef{postnote}} and %
      test {\ifnumequal{\value{citecount}}{\value{citetotal}}} ) %
  } %
    {\DeclareFieldAlias{textcitehyperref}{noformat}} %
    {}%
  \printtext[textcitehyperref]{%
    \restorebibmacro{textcite}%
    \usebibmacro{textcite}}} %

\DeclareNameAlias{editorin}{first-last}

\newbibmacro*{byeditor:in}{%
  \ifnameundef{editor} %
    {} %
    {\printnames[editorin]{editor}%
     \addspace\bibsentence %
     \mkbibparens{\usebibmacro{editorstrg}}%
     \clearname{editor}%
     \printunit{\space}}} %

\xpatchbibdriver{inbook} %
  {\usebibmacro{in:}%
   \usebibmacro{bybookauthor}%
   \newunit\newblock %
   \usebibmacro{maintitle+booktitle}%
   \newunit\newblock %
   \usebibmacro{byeditor+others}} %
  {\usebibmacro{in:}%
   \usebibmacro{bybookauthor}%
   \newunit\newblock %
   \usebibmacro{byeditor:in}%
   \newunit\newblock %
   \usebibmacro{maintitle+booktitle}%
   \newunit\newblock %
   \usebibmacro{byeditor+others}} %
  {}{} %

\xpatchbibdriver{incollection} %
  {\usebibmacro{in:}%
   \usebibmacro{maintitle+booktitle}%
   \newunit\newblock %
   \usebibmacro{byeditor+others}} %
  {\usebibmacro{in:}%
   \usebibmacro{byeditor:in}%
   \setunit{\labelnamepunct}\newblock %
   \usebibmacro{maintitle+booktitle}%
   \newunit\newblock %
   \usebibmacro{byeditor}} %
  {}{} %

\xpatchbibdriver{inproceedings} %
  {\usebibmacro{in:}%
   \usebibmacro{maintitle+booktitle}%
   \newunit\newblock %
   \usebibmacro{event+venue+date}%
   \newunit\newblock %
   \usebibmacro{byeditor+others}} %
  {\usebibmacro{in:}%
   \usebibmacro{byeditor:in}%
   \setunit{\labelnamepunct}\newblock %
   \usebibmacro{maintitle+booktitle}%
   \newunit\newblock %
   \usebibmacro{event+venue+date}%
   \newunit\newblock %
   \usebibmacro{byeditor+others}} %
  {}{}  % 

\date{}
  
\makeatother %
\RequirePackage{authblk} %

\renewcommand\Authands{ and }
\setcounter{Maxaffil}{0}
\renewcommand\Authfont{\textbf\textsc\large}
\renewcommand\Affilfont{\itshape\small}


% prints bibliography author names as small caps
\renewcommand{\mkbibnamefirst}[1]{\textcolor{blue}{#1\addperiod}}
\renewcommand{\mkbibnamelast}[1]{\textcolor{blue}{#1}}
\renewcommand{\mkbibnameprefix}[1]{\textcolor{blue}{#1}}
\renewcommand{\mkbibnameaffix}[1]{\textcolor{blue}{#1}}
\renewcommand{\labelnamepunct}


\renewcommand*{\newunitpunct}{\addperiod\space}
\renewcommand{\labelalphaothers}{}
\renewcommand{\labelnamepunct}{\addperiod\space}

% Author names separated by and in bibliography
\renewcommand*{\finalnamedelim}{\space\textcolor{blue}{\addspace\bibstring{and}\space}}

% Year wiyhout parenthesis in bibliography
\xpatchbibmacro{date+extrayear}{%
  \printtext[parens]%
}{%
  \addperiod\space%
  \printtext%
}{}{}
