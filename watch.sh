#!/bin/bash

INPUT_MD="Zelenski_Resume.md"
INPUT_CSS="style.css"
OUTPUT_HTML="${INPUT_MD%.md}.html"
OUTPUT_PDF="${INPUT_MD%.md}.pdf"

fswatch -o "$INPUT_MD" "$INPUT_CSS" | while read; do
  pandoc "$INPUT_MD" -o "$OUTPUT_HTML" --template=resume-template.html --css="$INPUT_CSS" --standalone
  weasyprint "$OUTPUT_HTML" "$OUTPUT_PDF"
  echo "Updated $OUTPUT_HTML and $OUTPUT_PDF"
done
