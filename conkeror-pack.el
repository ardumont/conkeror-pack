;;; conkeror-pack.el --- conkeror editing setup      -*- lexical-binding: t; -*-

;; Copyright (C) 2015  Antoine R. Dumont

;; Author: Antoine R. Dumont <tony@dagobah>
;; Keywords: convenience

;;; Commentary:

;;; Code:

(package-install 'conkeror-minor-mode)

(require 'conkeror-minor-mode)

;; for all javascript files
;; (add-hook 'js-mode-hook 'conkeror-minor-mode)

;; If you want it only on some files, you can have it activate only on your .conkerorrc file:
;; (add-hook 'js-mode-hook (lambda ()
;;                           (when (string= ".conkerorrc" (buffer-name))
;;                             (conkeror-minor-mode 1))))

;; alternatively, only on files with "conkeror" somewhere in the path:
(add-hook 'js-mode-hook (lambda ()
                          (when (string-match "conkeror" (buffer-file-name))
                            (conkeror-minor-mode 1))))

(provide 'conkeror-pack)
;;; conkeror-pack.el ends here
