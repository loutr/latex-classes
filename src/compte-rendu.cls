%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lucas Tabary-Maujean, Copyleft 2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{compte-rendu}[2021/11/01 v0.2 Compte-rendu]
\LoadClass{article}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% RÉGLAGES DES PARAMÈTRES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[pdfborderstyle={/S/U/W 0}]{hyperref} % Le paramètre retire les bordures autour des hyperliens
\RequirePackage[twoside, asymmetric, a5paper, top=1.8cm, bottom=2cm, left=1cm, right=.9cm, headsep=10pt]{geometry}
\RequirePackage[table]{xcolor}
\RequirePackage{base}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Remplissage des en-têtes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titre{Compte-rendu}
\pagestyle{fancy}
\fancypagestyle{titre}{
    \renewcommand{\headrulewidth}{0.4pt}
    \rhead{\bfseries\@titre}
    \lhead{\@date}
}

\AtBeginDocument{%
    \thispagestyle{titre}
}

\AtEndDocument{%
    \renewcommand{\footrulewidth}{0.4pt}
    \lfoot{\small{\@auteur{} {% Ajoute un tiret uniquement si une addresse e-mail est spécifiée.
	\ifx\@email\@empty%
	\else%
	    --%
	\fi%
    } \texttt{\href{mailto:\@email}{\@email}}}}
    \rfoot{\@info}
}

\renewcommand{\headrulewidth}{0pt}
\lhead{} \rhead{} \chead{} \cfoot{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Divers %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\allowdisplaybreaks % Permet au environnement align d'êtres scindés sur plusieurs pages
\bibliographystyle{siam}
\setlength{\parskip}{1.2ex minus 1ex}
\setlength{\parindent}{10pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
