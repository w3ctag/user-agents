index.html: index.bs
	if command -v pipx >/dev/null 2>&1; then \
		pipx run bikeshed spec index.bs index.html; \
	else \
		curl https://api.csswg.org/bikeshed/ -o index.html -F file=@index.bs -F force=1; \
	fi

watch:
	pipx run bikeshed watch index.bs index.html

serve:
	pipx run bikeshed serve index.bs index.html
