CV: CV_PeetCremer_en.pdf

CV_PeetCremer_en.pdf: CV_PeetCremer_en.tex my-resume.cls
	lualatex CV_PeetCremer_en.tex
	lualatex CV_PeetCremer_en.tex

clean:
	rm -f *.pdf || true
	rm -f *.out || true
	rm -f *.log || true
	rm -f *.out || true
	rm -f *.aux || true