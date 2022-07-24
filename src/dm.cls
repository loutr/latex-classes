%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lucas Tabary-Maujean, Copyleft 2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dm}[2021/04/01 v0.2 DM]
\LoadClass{article}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% RÉGLAGES DES PARAMÈTRES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\ifdm@smaller
\newif\ifdm@noname
\DeclareOption{smaller}{\dm@smallertrue} % taille plus petite (par défaut)
\DeclareOption{bigger}{\dm@smallerfalse} % taille plus grande
\DeclareOption{noname}{\dm@nonametrue} % retire le nom de l'auteur

\ExecuteOptions{smaller} % smaller est le paramètre par défaut
\ProcessOptions\relax

\RequirePackage{moreenum}
\RequirePackage[pdfborderstyle={/S/U/W 0}]{hyperref} % Le paramètre retire les bordures autour des hyperliens
% hyperref defines accentuated commands like \d, \O (why?) 
\RequirePackage{base}


\ifdm@smaller
    \RequirePackage[twoside, asymmetric, a5paper, top=1.8cm, bottom=2cm, left=1.1cm, right=.9cm, headsep=10pt]{geometry}
\else
    \RequirePackage[twoside, asymmetric, a4paper, right=2.3cm, bottom=3cm, headsep=40pt]{geometry}
\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Création du titre %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\fairetitre}{
\hypersetup{pdftitle={\@categorie{} (\@identifiant)}} % Change le titre du fichier dans le lecteur PDF
\newpage
\begin{mdframed}[leftline=false, topline=false, linecolor=gray, linewidth=2pt,
                 align=center, userdefinedwidth=0.9\textwidth]
  {\LARGE\textbf \@categorie} \hfill \@date \\
  \textcolor{darkgray}{\Large\textit\@titre} \hfill\mbox{\textbf{\@info}}%
\end{mdframed}

\medskip
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Remplissage des en-têtes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}
\fancyhead[LO]{\textcolor{gray}{\textit \@identifiant}}
\fancyhead[LE]{}
\rhead{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\ifdm@noname
    \fancyfoot[LR]{}
    \fancyfoot[C]{\thepage}
\else
    \fancyfoot[LO]{\small{\@auteur{}, \reflectbox{\copyright}\the\year{}{
	\ifx\@email\@empty%
	\else%
	    -- \texttt{\href{mailto:\@email}{\@email}}%
	\fi%
    }}}
    \fancyfoot[C]{}
    \fancyfoot[R]{\thepage}
\fi
% graphicx nécessaire pour rendre un copyleft. On aurait pu utiliser textcomp.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Divers %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\parindent}{10pt}
\setlength{\parskip}{1.2ex minus 1ex}

 % Réglages des puces
%\newlist{secrep}{enumerate}{3}
%\setlist[secrep]{parsep=\parskip, leftmargin=0pt, itemsep=15pt, topsep=3pt, listparindent=\parindent,
% label=\textsubscript{\thesection}\textbf{\arabic*.}}
%\setlist[secrep, 2]{parsep=\parskip, leftmargin=14pt, itemsep=10pt, topsep=3pt, listparindent=\parindent, label=(\alph*)} 

\newlist{repp}{enumerate}{3}
\setlist[repp]{parsep=\parskip, leftmargin=0pt, itemsep=15pt, topsep=3pt, listparindent=\parindent,
label=\textbf{\arabic*.}}
\setlist[repp, 2]{parsep=\parskip, leftmargin=14pt, itemsep=10pt, topsep=3pt, listparindent=\parindent, label=(\alph*)} 
\setlist[repp, 3]{parsep=\parskip, leftmargin=12pt, itemsep=10pt, topsep=3pt, listparindent=\parindent, label=(\roman*)} 

%\allowdisplaybreaks % Permet au environnement align d'êtres scindés sur plusieurs pages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
