;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "hand-probability-as-a-measure-of-chance"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "paperwidth=0.5\\paperwidth" "paperheight=0.5\\paperheight" "left=4.5mm" "right=6mm" "top=2mm" "bottom=2mm")))
   (TeX-run-style-hooks
    "../../../handout-preamble-2023"
    "../../../../common-preamble-2023"
    "vs-probability-as-a-measure-of-chance-input"
    "ps-probability-as-a-measure-of-chance-input1"
    "ps-probability-as-a-measure-of-chance-input2"
    "geometry"))
 :latex)

