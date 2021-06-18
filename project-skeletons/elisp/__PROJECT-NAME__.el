;;; __PROJECT-NAME__.el --- Package description  -*- lexical-binding: t; -*-

;; Version: 0.1-pre
;; Package-Requires: ((emacs "27") (s "1.12.0"))

(require 's)

;;;###autoload
(defun count-words (text)
  ;; "" is true
  (if (string= "" text)
      0
    (1+ (s-count-matches " " text))))

(provide '__PROJECT-NAME__)

;;; __PROJECT-NAME__.el ends here
