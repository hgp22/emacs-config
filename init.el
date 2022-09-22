;; Extras
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Limpar o aspeto do Emacs
(setq inhibit-startup-message t   ;remove a mensagem longa (e feia) de boas vindas
      visible-bell nil)           ;as barras ja nao piscam
(menu-bar-mode -1)                ;tira a barra onde diz file/edit/...
(tool-bar-mode -1)                ;remove a barra de ferramentas
(scroll-bar-mode -1)              ;remove as barras de lado
(setq ring-bell-function 'ignore) ;retira o barulho dos avisos


;; Melhorar Emacs enquanto editor de texto
(global-display-line-numbers-mode 1)              ;mostra o numero das linhas
(setq display-line-numbers-type 'relative)        ;mostra o espacamento entre linhas
(load-theme 'tango-dark)                          ;tema atual - um dos default
(set-face-attribute 'default nil :height 150)     ;tamanho da letra

;;Configuracao da Dashboard
(require 'dashboard)
(require 'all-the-icons)
(dashboard-setup-startup-hook)
(setq dashboard-center-content t
      dashboard-set-heading-icons t
      dashboard-set-file-icons t)
