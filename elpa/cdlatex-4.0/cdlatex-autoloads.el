;;; cdlatex-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (cdlatex-mode turn-on-cdlatex) "cdlatex" "../../../../../.emacs.d/elpa/cdlatex-4.0/cdlatex.el"
;;;;;;  "de7d82bb0358b241d8ce4c064cc8b22c")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/cdlatex-4.0/cdlatex.el

(autoload 'turn-on-cdlatex "cdlatex" "\
Turn on CDLaTeX minor mode.

\(fn)" nil nil)

(autoload 'cdlatex-mode "cdlatex" "\
Minor mode for editing scientific LaTeX documents.  Here is a
list of features: \\<cdlatex-mode-map>

                           KEYWORD COMMANDS
                           ----------------
Many CDLaTeX commands are activated with an abbrev-like mechanism.
When a keyword is typed followed `\\[cdlatex-tab]', the keyword is deleted
from the buffer and a command is executed.  You can get a full list
of these commands with `\\[cdlatex-command-help]'.
For example, when you type `fr<TAB>', CDLaTeX will insert `\\frac{}{}'.

When inserting templates like '\\frac{}{}', the cursor is positioned
properly.  Use `\\[cdlatex-tab]' to move through templates.  `\\[cdlatex-tab]' also kills
unnecessary braces around subscripts and superscripts at point.

                     MATH CHARACTERS AND ACCENTS
                     ---------------------------
\\[cdlatex-math-symbol]  followed by any character inserts a LaTeX math character
      e.g. \\[cdlatex-math-symbol]e   => \\epsilon
\\[cdlatex-math-symbol]\\[cdlatex-math-symbol] followed by any character inserts other LaTeX math character
      e.g. \\[cdlatex-math-symbol]\\[cdlatex-math-symbol]e  => \\varepsilon
\\[cdlatex-math-modify]  followed by character puts a math accent on a letter or symbol
      e.g. \\[cdlatex-math-symbol]a\\[cdlatex-math-modify]~ => \\tilde{\\alpha}

CDLaTeX is aware of the math environments in LaTeX and modifies the
workings of some functions according to the current status.

                             ONLINE HELP
                             -----------
After pressing \\[cdlatex-math-symbol] or \\[cdlatex-math-modify], CDLaTeX waits for a short time for the second character.
If that does not come, it will pop up a window displaying the available
characters and their meanings.

                             KEY BINDINGS
                             ------------
\\{cdlatex-mode-map}

Under X, many functions will be available also in a menu on the menu bar.

Entering cdlatex-mode calls the hook cdlatex-mode-hook.
------------------------------------------------------------------------------

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/cdlatex-4.0/cdlatex-pkg.el"
;;;;;;  "../../../../../.emacs.d/elpa/cdlatex-4.0/cdlatex.el") (21015
;;;;;;  24839 844000 0))

;;;***

(provide 'cdlatex-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cdlatex-autoloads.el ends here
