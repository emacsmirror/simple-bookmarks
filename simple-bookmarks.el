;;; simple-bookmarks.el --- Bookmark / functioncall manager

;; Author: Julian T. Knabenschuh <jtkdevelopments@gmail.com>
;; Keywords: bookmark functioncall
;; Homepage: https://github.com/jtkDvlp/simple-bookmarks
;; Version: 1.5
;; Package-Requires: ((cl-lib "0.5"))

;;; MIT License

;; Copyright (c) 2016 Julian T. Knabenschuh

;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be included in all
;; copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;;; Commentary:

;; A smart enhancement providing a simple but convenient interface to
;; your recently and often used bookmarks / functioncalls.

;; To use this, add the following line somewhere in you init file:
;; (simple-bookmarks-init)

;; Please see README.md from the repository for documentation

;;; Code:

(require 'simple-bookmarks-utils)
(require 'simple-bookmarks-filters)
(require 'simple-bookmarks-funcs)
(require 'simple-bookmarks-interactive)

(defcustom simple-bookmarks-file "~/.emacs.d/simple-bookmarks"
  nil
  :type 'file
  :group 'simple-bookmarks)

(defvar simple-bookmarks-bookmarks nil)

;;;###autoload
(defun simple-bookmarks-init ()
  (setq simple-bookmarks-bookmarks (simple-bookmarks-funcs-read simple-bookmarks-file)))

(provide 'simple-bookmarks)
;;; simple-bookmarks.el ends here
