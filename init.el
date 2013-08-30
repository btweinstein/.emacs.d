;; Disable startup message ;;

(setq inhibit-startup-message t)

;; Update package list ;;
(require 'package)
(add-to-list 'package-archives '("marmalade" .  "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

;; Requring and setting up el-get  ;;

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

;; Useful function to remove stupid carriage returns

(defun dos2unix ()
  "Replace DOS eolns CR LF with Unix eolns CR"
  (interactive)
    (goto-char (point-min))
      (while (search-forward "\r" nil t) (replace-match "")))

;; Desired Packages ;;

; ido
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Jedi
(eval-when-compile (require 'jedi nil t))
(setq jedi:setup-keys t)
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)

(global-auto-complete-mode t)
(setq jedi:complete-on-dot t)

;; ECB
(require 'ecb)
(require 'ecb-autoloads)
(setq ecb-auto-activate 1)

(setq ecb-source-path '(("~/cancer_experiments/omeroScripts" "omeroScripts")
			("~/Documents/Coding_Projects/Random_Walk" "Living_Droplets")))
(setq ecb-source-file-regexps '((".*" ("\\(^\\(\\.\\|#\\)\\|\\(~$\\|\\.\\(elc\\|obj\\|o\\|class\\|lib\\|dll\\|a\\|so\\|cache\\|pyc\\)$\\)\\)") ("^\\.\\(emacs\\|gnus\\)$"))))
;; (setq ecb-show-sources-in-directories-buffer (quote always))
(semantic-mode 1)

;; Window Movement
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <left>") 'windmove-left)


;; LaTeX
(require 'tex-site)
(require 'tex-mik)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
; Spell check: use speck-mode on windows or else it's slow
(if (eq system-type 'windows-nt)
  (add-hook 'LaTeX-mode-hook 'speck-mode)
  (add-hook 'Latex-mode-hook 'flyspell-mode)
)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(setq TeX-PDF-mode t)
(global-font-lock-mode t)

(setq preview-image-type 'pnm)

;; Org mode

; Wrap lines intelligently
(add-hook 'org-mode-hook 'visual-line-mode)

; Always indent
(add-hook 'org-mode-hook
          (lambda ()
            (org-indent-mode t))
          t)

;; Use Aspell on windows
(if (eq system-type 'windows-nt)
  (setq ispell-program-name "aspell")
  (setq ispell-personal-dictionary "~/.emacs.d/.ispell")
)
(require 'ispell)
(setq flyspell-issue-message-flag nil)

;;Git
(require 'egg)
; Changed an option in customize

;;;;;;;;;;; Custom stuff: end here ;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(preview-gs-options (quote ("-q" "-dNOSAFER" "-dNOPAUSE" "-DNOPLATFONTS" "-dPrinted" "-dTextAlphaBits=4" "-dGraphicsAlphaBits=4")))
 '(vc-handled-backends (quote (RCS CVS SVN SCCS Bzr Hg Mtn Arch))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
