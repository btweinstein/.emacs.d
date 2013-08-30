;;; egg-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (egg-minor-mode-find-file-hook egg-minor-mode)
;;;;;;  "egg" "../../../../../.emacs.d/elpa/egg-20130702.925/egg.el"
;;;;;;  "8f88189d451ec7a7f79f336115d2e060")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/egg-20130702.925/egg.el

(autoload 'egg-minor-mode "egg" "\
Turn-on egg-minor-mode which would enable key bindings for
egg in current buffer.\\<egg-minor-mode-map>
\\[egg-start-new-branch] start a new branch from the current HEAD.
\\[egg-status] shows the repo's current status
\\[egg-commit-log-edit] start editing the commit message for the current staged changes.
\\[egg-file-stage-current-file] stage new changes of the current file
\\[egg-log] shows repo's history
\\[egg-file-checkout-other-version] checkout another version of the current file
\\[egg-file-cancel-modifications] delete unstaged modifications in the current file
\\[egg-next-action] perform the next logical action
\\[egg-file-diff] compare file with index or other commits
\\[egg-file-version-other-window] show other version of the current file.

\\{egg-minor-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'egg-minor-mode-find-file-hook "egg" "\


\(fn)" nil nil)

(add-hook 'find-file-hook 'egg-git-dir)

(add-hook 'find-file-hook 'egg-minor-mode-find-file-hook)

;;;***

;;;### (autoloads (egg-grep egg-grep-mode egg-grep-process-setup)
;;;;;;  "egg-grep" "../../../../../.emacs.d/elpa/egg-20130702.925/egg-grep.el"
;;;;;;  "789527456aa1deef67f9e4dce1a04495")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/egg-20130702.925/egg-grep.el

(autoload 'egg-grep-process-setup "egg-grep" "\
Setup compilation variables and buffer for `egg-grep'.
Set up `compilation-exit-message-function' and run `egg-grep-setup-hook'.

\(fn)" nil nil)

(autoload 'egg-grep-mode "egg-grep" "\
Sets `compilation-last-buffer' and `compilation-window-height'.

\(fn)" nil nil)

(autoload 'egg-grep "egg-grep" "\


\(fn LEVEL)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/egg-20130702.925/egg-base.el"
;;;;;;  "../../../../../.emacs.d/elpa/egg-20130702.925/egg-const.el"
;;;;;;  "../../../../../.emacs.d/elpa/egg-20130702.925/egg-custom.el"
;;;;;;  "../../../../../.emacs.d/elpa/egg-20130702.925/egg-diff.el"
;;;;;;  "../../../../../.emacs.d/elpa/egg-20130702.925/egg-git.el"
;;;;;;  "../../../../../.emacs.d/elpa/egg-20130702.925/egg-grep.el"
;;;;;;  "../../../../../.emacs.d/elpa/egg-20130702.925/egg-key.el"
;;;;;;  "../../../../../.emacs.d/elpa/egg-20130702.925/egg-pkg.el"
;;;;;;  "../../../../../.emacs.d/elpa/egg-20130702.925/egg-svn.el"
;;;;;;  "../../../../../.emacs.d/elpa/egg-20130702.925/egg.el") (21023
;;;;;;  41954 944000 0))

;;;***

(provide 'egg-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; egg-autoloads.el ends here
