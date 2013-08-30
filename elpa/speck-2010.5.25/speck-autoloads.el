;;; speck-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (speck-multi-read speck-buffer speck-mode) "speck"
;;;;;;  "../../../../../.emacs.d/elpa/speck-2010.5.25/speck.el" "ba7f82df491bb68ceabcab4904f4f2c4")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/speck-2010.5.25/speck.el

(autoload 'speck-mode "speck" "\
Toggle `speck-mode'.
With prefix ARG, turn speck-mode on if and only if ARG is
positive.  Turning on speck-mode will spell-check (\"speck\") all
windows showing the current buffer.

Global bindings (customizable via `speck-mode-keys').

\\{speck-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'speck-buffer "speck" "\
Toggle `speck-mode' for current buffer.
With non-numeric prefix argument ARG prompt for (new)
dictionary.  With prefix argument ARG zero use the default
dictionary.  With ARG any other number use the corresponding
entry from `speck-dictionary-names-alist'.

\(fn &optional ARG)" t nil)

(autoload 'speck-multi-read "speck" "\
Convert annotations to properties.
BEGIN and END denote the region to convert.

\(fn BEGIN END)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/speck-2010.5.25/speck-pkg.el"
;;;;;;  "../../../../../.emacs.d/elpa/speck-2010.5.25/speck.el")
;;;;;;  (21013 3244 990000 0))

;;;***

(provide 'speck-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; speck-autoloads.el ends here
