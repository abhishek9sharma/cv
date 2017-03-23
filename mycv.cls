\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mycv}[2017/03/22 LaTeX class to make CV]

\LoadClass[12pt,letterpaper]{report}

\RequirePackage{tabto}
\RequirePackage{hyperref} % enable hyperlinks
\RequirePackage{geometry} % manually set page margins
\RequirePackage{enumitem} % enumerate with [resume] option
\RequirePackage{fontspec} % define custom fonts
\RequirePackage{titlesec} % allow custom section fonts
\RequirePackage[USenglish]{babel} % use american-style formatting
\RequirePackage[autostyle]{csquotes} % enable enquoting
\RequirePackage{datetime} % enable formatting of date output

% define a default font face and set it as the body font
\setmainfont{Minion Pro}

% set name font to title the document
\newcommand{\namefont}[1]{{\normalfont\bfseries\Huge{#1}}}

% set section heading fonts and format
\titleformat{\section}{\normalfont\bfseries\uppercase}{}{}{}{}
\titlespacing{\section}{0pt}{24pt plus 4pt minus 2pt}{12pt plus 2pt minus 2pt}

% set subsection heading fonts and format
\titleformat{\subsection}{\normalfont\bfseries}{}{}{}{}
\titlespacing{\subsection}{0pt}{12pt plus 4pt minus 2pt}{8pt plus 2pt minus 2pt}

% set page margins
\geometry{
  body={6.5in, 9.0in},
  left=1.0in,
  top=1.0in
}

% prevent paragraph indentation
\setlength\parindent{0em}

% define tab width and space between list items
\newcommand{\listtabwidth}{5em}
\newcommand{\listitemspace}{0.2em}

% make unordered lists without bullets and use compact spacing
\renewenvironment{itemize}{
  \begin{list}{}{
      \setlength{\leftmargin}{0em}
      \setlength{\parskip}{0em}
      \setlength{\itemsep}{\listitemspace}
      \setlength{\parsep}{\listitemspace}
    }
}{
  \end{list}
}

% make tabbed lists so content is left-aligned next to years
\TabPositions{\listtabwidth}
\newlist{tablist}{description}{3}
\setlist[tablist]{leftmargin=\listtabwidth,
                  labelindent=0em,
                  topsep=0em,
                  partopsep=0em,
                  itemsep=\listitemspace,
                  parsep=\listitemspace,
                  font=\normalfont}

% print the month and year only when using \today
\newdateformat{monthyeardate}{\monthname[\THEMONTH] \THEYEAR}

% define metadata for pdf properties
\newcommand{\myname}{Geoff Boeing}
\hypersetup{
  colorlinks = true,
  urlcolor = black,
  pdfauthor = {\myname},
  pdfkeywords = {urban planning, urban design, data science, complexity},
  pdftitle = {\myname: Curriculum Vitae},
  pdfsubject = {Curriculum Vitae},
  pdfpagemode = UseNone
}