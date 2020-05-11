build:
	asciidoctor -o index.html -D out -b html5 -a linkcss src/asciidoctor_skin_demo.adoc
	cp src/zajo-light.css ./out
	cp src/skin.png ./out

pdf: build
	asciidoctor -o "asciidoctor_skin.pdf" -D out -b "pdf"  -d "book" -r asciidoctor-pdf src/asciidoctor_skin_demo.adoc
