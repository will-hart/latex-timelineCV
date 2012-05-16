% harnon-cv.cls
% By William Hart, 2012
%
% A template for providing a neat CV
% Find it at https://github.com/mecharius/latex-timelineCV
%
% Licensed under the CC-GNU GPL version 2.0 or later.
% See http://creativecommons.org/licenses/GPL/2.0
%


\ProvidesClass{harnon-cv}
\LoadClass{article}

% add etoolbox for if/then/else enhancements
\usepackage{etoolbox}

% fields that user can set
\makeatletter

	\newcommand{\yourname}[1]{\def \@yourname{#1}}
	\newcommand{\yournumber}[1]{\def \@yournumber{#1}}
	\newcommand{\youraddress}[1]{\def \@youraddress{#1}}
	\newcommand{\youremail}[1]{\def \@youremail{#1}}
	\newcommand{\recenthistory}[1]{\def \@recenthistory{#1}}

	\yourname{}
	\yournumber{} 
	\youraddress{} 
	\youremail{} 
	\recenthistory{}
	
	% redefine the author command
	\renewcommand{\author}[1]{\@yourname{#1}}
\makeatother

% margins
\usepackage[top=0.75in,bottom=0.75in,left=1in,right=1in]{geometry}

% fonts
\renewcommand{\familydefault}{cmss}

% images - such as a headshot if desired
\usepackage[pdftex]{graphicx}

% title
\makeatletter
\def \@maketitle {%
	\begin{minipage}{0.45\textwidth}
		\begin{flushleft}
			x
		\end{flushleft}
	\end{minipage}
	\begin{minipage}{0.5\textwidth}
		\begin{flushright}
			\ifundef{\@yourname}{\relax}{\hfill\LARGE\textsc{\@yourname}\\}
			\ifundef{\@youraddress}{\relax}{\hfill\small\@youraddress\\}
			\ifundef{\@youremail}{\relax}{\hfill\small\@youremail\\}
			\ifundef{\@yournumber}{\relax}{\hfill\small\@yournumber\\}
		\end{flushright}
	\end{minipage}
	
	% add a closing rule
	\vspace{0.5cm}
	\noindent\rule{\textwidth}{0.2mm}
	
	% draw recent history if there is any
	\ifundef{\@recenthistory}{\relax}{%
		\begin{center}
			\textsc{\textbf{About Me}}\\[0.2cm]
			
			\noindent\@recenthistory
		\end{center}
	
		% add a closing rule
		\noindent\rule{\textwidth}{0.2mm}
	}
}
\makeatother

% recent summary listing

% employment timeline

