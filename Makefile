CV: CV_PeetCremer_en.pdf

CV_PeetCremer_en.pdf: CV_PeetCremer_en.tex my-resume.cls
	@echo "Building CV PDF..."
	@lualatex --interaction=nonstopmode CV_PeetCremer_en.tex > /dev/null 2>&1 || (echo "First pass failed, checking for errors..."; lualatex --interaction=nonstopmode CV_PeetCremer_en.tex)
	@lualatex --interaction=nonstopmode CV_PeetCremer_en.tex > /dev/null 2>&1 || true
	@echo "CV PDF created: CV_PeetCremer_en.pdf"

diff: CV_PeetCremer_en_diff.pdf

CV_PeetCremer_en_diff.pdf: CV_PeetCremer_en.tex
	@echo "Creating diff PDF..."
	@git show main:CV_PeetCremer_en.tex > CV_PeetCremer_en_original.tex
	@latexdiff --type=UNDERLINE CV_PeetCremer_en_original.tex CV_PeetCremer_en.tex > CV_PeetCremer_en_diff.tex
	@lualatex -interaction=nonstopmode CV_PeetCremer_en_diff.tex > /dev/null 2>&1 || true
	@lualatex -interaction=nonstopmode CV_PeetCremer_en_diff.tex > /dev/null 2>&1 || true
	@rm -f CV_PeetCremer_en_original.tex CV_PeetCremer_en_diff.tex
	@echo "Diff PDF created: CV_PeetCremer_en_diff.pdf"

clean:
	rm -f *.pdf || true
	rm -f *.out || true
	rm -f *.log || true
	rm -f *.out || true
	rm -f *.aux || true

clean-diff:
	rm -f CV_PeetCremer_en_diff.pdf || true
	rm -f CV_PeetCremer_en_original.tex || true
	rm -f CV_PeetCremer_en_diff.tex || true

.PHONY: CV diff clean clean-diff