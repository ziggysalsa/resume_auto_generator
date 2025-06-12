# Sasha's Resume

This repo contains my resume plus the tools to generate it. What it does:
- Converts markdown file `Zelenski_Resume.md` to a PDF and HTML file, with formatting as specified in `style.css`
- Re-generates the PDF and HTML files whenever the resume markdown or style.css files are saved

## Contents

- `Zelenski_Resume.md` — Resume in Markdown format 
- `resume-template.html` — Custom Pandoc HTML template. This (1) prevents Pandoc from getting all fancy with its default template, and adding unnecessary formatting into the HTML file, and (2) adds support for the `resume-header class` so it gets converted in the HTML file properly
- `style.css` — CSS styles for formatting
- `watch.sh` — Script for auto-generating HTML and PDF files upon save
- `README.md` — Project documentation

## How to Use

1. Install requirements
2. Run `./watch.sh`
3. Make changes to `Zelenski_Resume.pdf` and/or `style.css`, and save
4. Output files are automatically generated

## Requirements

- [Pandoc](https://pandoc.org/): `brew install pandoc`
- [WeasyPrint](https://weasyprint.org/): `pip install weasyprint`
- [fswatch](https://emcrisostomo.github.io/fswatch/): `brew install fswatch`

Not a requirement, but the 'vscode-pdf' extension is handy for viewing PDF documents in VSC. It auto-refreshes when the PDF changes