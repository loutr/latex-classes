%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lucas Tabary-Maujean, Copyleft 2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{rapport}[2021/05/08 v0.1 Rapport]
\LoadClass[twocolumn]{article}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% RÉGLAGES DES PARAMÈTRES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{base}
\RequirePackage[a4paper, left=2cm, right=2cm, bottom=3cm, headsep=100pt]{geometry}
\RequirePackage[small]{titlesec} % Taille des sections réduite
\RequirePackage{appendix}
\RequirePackage[pdfborderstyle={/S/U/W 0}]{hyperref} % Le paramètre retire les bordures autour des hyperliens

\newif\ifrapport@noname
\DeclareOption{noname}{\rapport@nonametrue} % retire le nom de l'auteur
\ProcessOptions\relax
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Création du titre %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\identifiant{}
% On change la commande titre pour pouvoir ajouter une liste d'images au-dessus du titre (image de
% laboratoire, d'établissement, logotype de l'épreuve, etc.). On utilise pour cela le module TikZ
% qui est inclu dans 'base'.
% utilisation: \titre[image1,image2,...]{Titre du document}
\renewcommand\titre[2][]{\title{
    \foreach \pic in {#1}{
	\includegraphics[height=1.5cm]{\pic}%
    }
    \ifx#1\@empty\else \\ \fi% ne saute une ligne que si une image a été ajoutée
    \bfseries #2
}}
\ifrapport@noname
    \author{}
\else
    \author{\@auteur{} --- \@info\\ \normalsize \texttt{\@email}}
\fi

% wrapper de maketitle qui permet l'écriture d'un abstract sur une seule colonne
\newcommand{\fairetitre}[1]{%
    \thispagestyle{fancy}
    \twocolumn[
	\begin{@twocolumnfalse}
        \maketitle
        \ifx#1\@empty\else
	    \begin{abstract}
		{\normalsize #1}
	    \end{abstract}
	\vspace{1cm}
        \fi
	\end{@twocolumnfalse}
    ]
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Remplissage des en-têtes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

%\AtEndDocument{\lfoot{\small{\reflectbox{\copyright} \the\year{}} }}
\fancyhead{}
\fancyfoot[L]{\small{\reflectbox{\copyright} \the\year{}}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Divers %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\columnsep}{20pt} % 10 pt par défaut
\setlength{\parskip}{1.2ex minus 1ex}
\setlength{\parindent}{10pt}
%\allowdisplaybreaks % Permet au environnement align d'êtres scindés sur plusieurs pages
\bibliographystyle{abbrv}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
