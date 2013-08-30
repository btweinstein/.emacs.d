;; Disable startup message ;;

(setq inhibit-startup-message t)

;; Update package list ;;
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa", "http://melpa.milkbox.net/packages/"))
(package-initialize)

;; Requring el-get  ;;

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))
(el-get 'sync)

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

(setq ecb-options-version "2.40")

(setq ecb-source-path '(("~/cancer_experiments/omeroScripts" "omeroScripts")))

(setq ecb-source-file-regexps '((".*" ("\\(^\\(\\.\\|#\\)\\|\\(~$\\|\\.\\(elc\\|obj\\|o\\|class\\|lib\\|dll\\|a\\|so\\|cache\\|pyc\\)$\\)\\)") ("^\\.\\(emacs\\|gnus\\)$"))))
(setq ecb-show-sources-in-directories-buffer (quote always))

(semantic-mode 1)

;; Window Movement

(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <left>") 'windmove-left)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )