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
\LoadClass[12pt]{article}

% add etoolbox for if/then/else enhancements
\usepackage{etoolbox}

% framed package for borders
\usepackage{framed}

% define a custom timeline framed section based on leftbar
\newenvironment{timelinebar}{%
	\def\FrameCommand{\vrule width 1pt \hspace{10pt}}%
	\MakeFramed {\advance\hsize-\width \FrameRestore}}%
{\endMakeFramed}
 

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
		\end{center}	
		\noindent\@recenthistory\\
	
		% add a closing rule
		\noindent\rule{\textwidth}{0.2mm}\vspace{0.5cm}
	}
}
\makeatother

% some commands for the timeline
\makeatletter

	% start a timeline - fixes spacing before the timeline
	\newcommand{\starttimeline}{\vspace{1cm}}

	% recent summary listing in the form of a timeline - takes 2 arguments
	%   - First is the 'year' or date you want to apply
	%   - Second is the comments against that date
	\newcommand{\timelineitem}[2]{
		\begin{minipage}[t]{0.2\textwidth}
			\vspace{0.2cm}
			\begin{center}
				\textbf{#1}\quad\leaders\vrule height 5pt depth -4pt \hfill \null
			\end{center}
		\end{minipage}
		\begin{minipage}[t]{0.8\textwidth}
			\begin{timelinebar}
				\vspace{0.2cm}
				#2\\
				\vspace{1.2cm}
			\end{timelinebar}
		\end{minipage}
		\vspace{-10mm}
	}
\makeatother
% employment timeline


