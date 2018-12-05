index.html: Makefile
	echo "<h1>Field Theory</h1>" > index.html
	for d in 20181128 20181205; do \
	echo "<h2>"$$d"</h2>"; \
	for x in $$d/*.jpg; do \
	echo "<a href=\""$$x"\"><img src=\""$$x"\" width=\"40%\"></a>"; \
	done; \
	done >> index.html
