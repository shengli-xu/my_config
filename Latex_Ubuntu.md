# Step1. Install Tex Live

```bash
sudo apt install -y texlive texlive-luatex
```

# Step2. Install Latex Workshop in VS Code

```bash
ext install latex-workshop
```

 # Step3. Modify settings.js in VS Code

```json
    "latex-workshop.view.pdf.viewer": "tab",
    "latex-workshop.latex.tools": [
        {
        "name": "lualatex",
        "command": "lualatex",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "-pdf",
            "%DOCFILE%"
        ]
        },
        {
        "name": "pdflatex",
        "command": "pdflatex",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOCFILE%"
        ]
        },
        {
        "name": "bibtex",
        "command": "bibtex",
        "args": ["%DOCFILE%"]
        }
    ],
    "latex-workshop.latex.recipes": [
        {
        "name": "lua -> bib -> lua -> lua",
        "tools": ["lualatex", "bibtex", "lualatex", "lualatex"]
        }
    ],
```
