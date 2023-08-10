image-not-loading.pdf: image-not-loading.md
	pandoc \
		-f markdown+grid_tables+table_captions+pipe_tables+example_lists+fenced_code_attributes+fenced_divs+bracketed_spans+footnotes+raw_tex+raw_attribute \
		--pdf-engine=lualatex \
		--slide-level=2 \
		-t beamer \
		-o image-not-loading.pdf \
		image-not-loading.md
