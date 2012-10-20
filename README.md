harnon-cv (Latex Document Class)
================================

This is a latex document class for building a neat CV document using a 'timeline' for displaying your recent experience.  A minimal working example is provided  in sample.tex, which also provides some basic examples of the special commands provided.  

Include the class by starting your .tex file with

    \documentclass{harnon-cv}

You can add your information by writing

	% add your user information
	\author{My Name}
	\youremail{your@email.com}
	\yourwebsite{http://github.com}
	\youraddress{121 Your Address, \\Your Town\\Your Postcode}


You can add headers to document sections as follows

	\adddocumentheader{Top of Page Super heading}
	\addheadertext{Section Heading}
	\addsubheader{Sub section heading}
	\addcallout{Some emphasised text, similar to sub section}

You can also add a timeline as follows

	\starttimeline
		\timelineitem{2009}{Did some stuff}
		\timelinespacer
		\timelineitem{2010}{
			\addtimelinebullet{Some text in a bullet pt}
			\addtimelinebullet{Some more text in a bullet point}
		}
	\stoptimeline

The \timelineseparator command just adds some white space between timeline items. It is optional.

This is provided as public domain (with no warranty), so use, change, modify however you wish.  If you find or add something particularly cool, feel free to request some changes or report an issue at https://github.com/will-hart/latex-timelineCV



Revisions
================================

Version 1.1 (20-Oct-2012)
 ! Fix misplaced character in front of email address in the class

Version 1.0
 - Initial Version
