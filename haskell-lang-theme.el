;;; haskell-lang-theme.el --- A port of the haskell.org header theme to Emacs.

;; Copyright (C) 2015 Ricky Elrod

;; Author: Ricky Elrod <ricky@elrod.me>
;; URL: http://github.com/relrod/haskell-lang-theme
;; Version: 0.0.1
;; Package-Requires: ((color-theme "6.6.1"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 2 of the License, or
;; (at your option) any later version.
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.
;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; The structure of this file is loosely based on brim-theme from
;; here: https://github.com/owainlewis/emacs-color-themes

(unless (>= 24 emacs-major-version)
  (error "requires Emacs 24 or later."))

(deftheme haskell-lang "hl theme for Emacs")

(custom-theme-set-variables
 'haskell-lang
 '(linum-format " %5i "))

(let ((background     "#19111F")
      (gutters        "#343D46")
      (gutter-fg      "#65737E")
      (gutters-active "#4F5B66")
      (builtin        "#D8BCF5")
      (foreground     "#C0C5CE")
      (invisibles     "#65737E")
      (lineHighlight  "#343D46")
      (selection      "#4F5B66")
      (text           "#C0C5CE")
      (comments       "#777777")
      (punctuation    "#C0C5CE")
      (delimiters     "#C0C5CE")
      (operators      "#FAFAFA")
      (keywords       "#D8BCF5")
      (variables      "#D8BCF5")
      (functions      "#A2D1F9")
      (methods        "#A2D1F9")
      (strings        "#A2C9A1")
      (constants      "#D8BCF5")
      (white          "#FAFAFA"))

  (custom-theme-set-faces
   'haskell-lang

   ;; Default colors
   ;; *****************************************************************************************

   `(default            ((t (:foreground ,text :background ,background))))
   `(region             ((t (:background ,selection))))
   `(cursor             ((t (:background ,white))))
   `(fringe             ((t (:background ,background :foreground ,white))))
   `(linum              ((t (:background ,background :foreground ,gutter-fg))))
   `(mode-line          ((t (:foreground ,white :background ,gutters-active))))
   `(mode-line-inactive ((t (:foreground ,gutter-fg :background ,gutters))))

   ;; Font lock faces
   ;; *****************************************************************************************

   `(font-lock-keyword-face           ((t (:foreground ,keywords))))
   `(font-lock-type-face              ((t (:foreground ,punctuation))))
   `(font-lock-constant-face          ((t (:foreground ,constants))))
   `(font-lock-variable-name-face     ((t (:foreground ,variables))))
   `(font-lock-builtin-face           ((t (:foreground ,builtin))))
   `(font-lock-string-face            ((t (:foreground ,strings))))
   `(font-lock-comment-face           ((t (:foreground ,comments))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,delimiters))))
   `(font-lock-function-name-face     ((t (:foreground ,functions))))
   `(font-lock-doc-string-face        ((t (:foreground ,strings)))))

  ;; *****************************************************************************************

  )

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;; *****************************************************************************************

(provide-theme 'haskell-lang)

;; Local Variables:
;; no-byte-compile: t
;; End:
