image-not-loading.pdf: image-not-loading.md	pandoc-version
	pandoc \
		-f markdown+grid_tables+table_captions+pipe_tables+example_lists+fenced_code_attributes+fenced_divs+bracketed_spans+footnotes+raw_tex+raw_attribute \
		--pdf-engine=lualatex \
		--slide-level=2 \
		-t beamer \
		-o image-not-loading.pdf \
		image-not-loading.md \
	> error 2>&1

pandoc-version:
	pandoc --version > pandoc-version 2>&1
