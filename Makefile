CV: CV_en.pdf

CV_en.pdf: CV_en.tex
	lualatex CV_en.tex

clean:
	rm -f *.pdf || true
	rm -f *.out || true
	rm -f *.log || true
	rm -f *.out || true
	rm -f *.aux || true