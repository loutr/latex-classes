%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lucas Tabary-Maujean, Copyleft 2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{transparents}[2021/05/28 v0.1 Transparents]
\LoadClass[xcolor=table, aspectratio=169]{beamer}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% RÉGLAGES DES PARAMÈTRES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{base}
\uselanguage{French}
\languagepath{French}
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.17}
\RequirePackage{appendixnumberbeamer}
\setbeamertemplate{footline}{\hspace{5pt}\vspace{5pt}\scriptsize{\insertframenumber/\inserttotalframenumber}}
\beamertemplatenavigationsymbolsempty % retire les symboles de navigation du coin inférieur droit

\usetheme{Goettingen}
\usecolortheme{rose}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Création du titre %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\identifiant{}
\author{\@auteur}
\institute{\@info}
\let\titre\title

\def\fairetitre{\thispagestyle{empty}\maketitle}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 
%%%%%%%%%%%%%%%% Configuration des environnements listings (écriture d'algorithmes) %%%%%%%%%%%%%%%%
\definecolor{bblue}{HTML}{b8b8e4}
\lstdefinestyle{bdefault}{
    frame=l,
    basicstyle={\footnotesize\ttfamily\color{darkgray}},
    backgroundcolor=\color{bblue!40},
    numbers=left,
    captionpos=b,
    numberstyle=\scriptsize,
    keywordstyle=\color{blue},
    commentstyle=\color{gray}\textit,
    breakatwhitespace=true,
    breaklines=true,
    framesep=4.5mm,
    framexleftmargin=2mm,
    fillcolor=\color{bblue},
    rulecolor=\color{bblue},
}

\lstdefinestyle{bcaml}{
    style=bdefault,
    language=Caml,
    morekeywords={int, string, fst, snd, =, !}
}

\lstdefinestyle{bpy}{
    style=bdefault,
    language=Python
}

\lstdefinestyle{bbash}{
    style=bdefault,
    language=Bash
}

\lstnewenvironment{bcaml}[1][] % Beamer Caml
    {\lstset{style=bcaml, #1}}
    {}

\lstset{style=bdefault}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Divers %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usetikzlibrary{overlay-beamer-styles}
\usetikzlibrary{matrix,chains,positioning,decorations.pathreplacing,arrows}
\bibliographystyle{abbrv}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
