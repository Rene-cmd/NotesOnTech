### These are the setups that i keep going back to:
To set up your document this will genarly be a best setup, for small to medium documentations. 
```latex
\documentclass[12pt,a4paper]{article}
\usepackage[utf8]{inputenc}
\usepackage[left=2.5cm,right=2cm,top=1cm,bottom=2cm]{geometry}
\usepackage{graphicx}
\usepackage{tikz}
\usepackage[tikz]{bclogo}
\usepackage{environ}
\usepackage{float}
\usepackage{xcolor}
\usepackage[backend=biber,style=verbose]{biblatex}
\addbibresource{rapport.bib}
\usepackage{wrapfig}
\usetikzlibrary{calc}
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt} 
\linespread{1,5}
\usepackage{xcolor}
\usepackage{listings}
\usepackage{caption}
\usepackage{pdfpages}
```

### Box Declaration:

```latex
\DeclareCaptionFont{white}{\color{white}}
\DeclareCaptionFormat{listing}{%
  \parbox{\textwidth}{\colorbox{gray}{\parbox{\textwidth}{#1#2#3}}\vskip-4pt}}
\captionsetup[lstlisting]{format=listing,labelfont=white,textfont=white}
\lstset{frame=lrb,xleftmargin=\fboxsep,xrightmargin=-\fboxsep}
```

### BibTex varible:

```latex

```

### Code Highlight

```latex

```
