.SUFFIXES:.eps .pdf .gz .data .dot

master.pdf: master.tex bib/mybib.bib sections/appendix.tex sections/colophon.tex sections/frontpage.tex sections/job_description.tex sections/results.tex sections/tasks.tex sections/titlepages.tex sections/bib_analysis.tex sections/conclusion.tex sections/introduction.tex sections/preface.tex sections/skills.tex sections/time_management.tex
	pdflatex -shell-escape master
	bibtex master
	pdflatex -shell-escape master
	pdflatex -shell-escape master

clean:
	rm -f master.aux master.pdf master.blg master.tdo master.thm master-blx.bib master.bbl master.dvi master.toc master.run.xml  *.log *.out *pyg
