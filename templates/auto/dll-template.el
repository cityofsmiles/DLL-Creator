;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "dll-template"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-run-style-hooks
    "latex2e"
    "../../scheds/TEACHERSURNAME"
    "article"
    "art11")
   (TeX-add-symbols
    "contentStandards"
    "performanceStandards"))
 :latex)

