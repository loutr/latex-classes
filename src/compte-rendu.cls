%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lucas Tabary-Maujean, Copyleft 2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{compte-rendu}[2021/11/01 v0.2 Compte-rendu]
\LoadClass{article}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% RÉGLAGES DES PARAMÈTRES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[pdfborderstyle={/S/U/W 0}]{hyperref} % Le paramètre retire les bordures autour des hyperliens
\usepackage[twoside, asymmetric, a5paper, top=1.8cm, bottom=2cm, left=1cm, right=.9cm, headsep=10pt]{geometry}
\usepackage[table]{xcolor}

% Couleurs personnalisées
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{darkgray}{rgb}{0.2,0.2,0.2}
\definecolor{dark}{rgb}{0,0,0}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\input{base.sty}


 
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
\lhead{}
\rhead{}
\chead{}
\cfoot{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Divers %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\allowdisplaybreaks % Permet au environnement align d'êtres scindés sur plusieurs pages
\bibliographystyle{siam}
\setlength{\parskip}{1.2ex minus 1ex}
\setlength{\parindent}{10pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
