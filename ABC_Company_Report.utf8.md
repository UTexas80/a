---
title: "Duke HomeCare and Hospice"
subtitle: "2019-20 ABC Company"
# author: "Glen C. Falk"
# date: "2020-12-29"
# site: bookdown::bookdown_site
header-includes:
- \usepackage{pdflscape}
- \newcommand{\blandscape}{\begin{landscape}}
- \newcommand{\elandscape}{\end{landscape}}
output:
  bookdown::gitbook: default
  theme: readable  
  highlight: tango
  html_document:
    df_print: kable
  pdf_document:
      includes:
        in_header: header.tex
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
linestretch: 1.15
link-citations: yes
links-as-notes: true
description: "This is a minimal example of using the bookdown package to write a book. The output format for this example is bookdown::gitbook."
cover-image: "images/duke.png"
---



## Table of Contents

- [01. Items Sold](#intro)
    - [Percentage of Items Sold](#percentage-of-items-sold)
    - [Percentage of Items Sold Table](#percentage-of-items-sold-table)


<!-- Remember each Rmd file contains one and only one chapter, and a chapter is defined by the first-level heading `#`. -->

<!-- To compile this example to PDF, you need XeLaTeX. You are recommended to install TinyTeX (which includes XeLaTeX): <https://yihui.name/tinytex/>. -->

```{=openxml}
<w:p><w:r><w:br w:type="page"/></w:r></w:p>
```



<!--chapter:end:index.Rmd-->

\newpage
# 01. Items Sold {#intro}










\includegraphics[width=1\linewidth]{/Users/falkfamily/Documents/GitHub/abc/images/duke} 

\blandscape
## Percentage of Items Sold


\includegraphics[width=1\linewidth]{/Users/falkfamily/Documents/GitHub/abc/png/p01a1_bar} 
\elandscape

## Percentage of Items Sold Table

\includegraphics[width=4.00in,height=1.75in,keepaspectratio]{01-items_files/figure-latex/1.2.1-tbl-items-sold-1.png}

<!--chapter:end:01-items.Rmd-->

