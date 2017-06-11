index.html: .
	ls | sort -r | gawk '!/^(index.html|Makefile|makeindex.bat)$$/ {printf "<a href=\"%s\">%s</a><br>\n",$$_,$$_}' > index.html
