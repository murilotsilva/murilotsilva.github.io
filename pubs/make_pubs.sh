pandoc -t markdown_strict --filter=pandoc-citeproc --standalone pubs-journal.md -o publications-journal.md
pandoc -t markdown_strict --filter=pandoc-citeproc --standalone pubs-conferences.md -o publications-conferences.md 
pandoc -t markdown_strict --filter=pandoc-citeproc --standalone pubs-unpublished.md -o publications-unpublished.md 
pandoc -t markdown_strict --filter=pandoc-citeproc --standalone pubs-thesis.md -o publications-thesis.md 
