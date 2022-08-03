;; 显示行号
(global-linum-mode 1)
;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)
;; 显示空白字符
;(global-whitespace-mode 1)
;; 启动窗口大小
(setq default-frame-alist
'((height . 45) (width . 85)))
;; 设置字号15pt
(set-face-attribute 'default nil :height 145)
;; 关闭工具栏
(tool-bar-mode -1)
;; 关闭滑动条
(scroll-bar-mode -1)
;; 全局开启company补全
(global-company-mode 1)
;; 加载主题
(load-theme 'tango-dark t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(markdown-mode company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(defun open-markdown-preview ()
  (interactive)
  (browse-url "http://localhost:6419"))
(global-set-key (kbd "C-c m") 'open-markdown-preview)
