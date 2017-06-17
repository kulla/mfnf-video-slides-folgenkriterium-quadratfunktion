#!/bin/sh
#
# Continuously builds the slides when the source files are changed.

# Build the PDF when it does not exist
make

# Open the PDF in the background
xdg-open slides.pdf &

# Continuously building the PDF
while inotifywait -e modify -e delete_self slides.tex ; do
	make
done
