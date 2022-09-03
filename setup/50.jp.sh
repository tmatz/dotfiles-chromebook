sudo apt install uim-fep uim-mozc
cat << EOD > ~/.uim
(define default-im-name 'mozc)
(define-key generic-on-key? '("<Control> "))
(define-key generic-off-key? '("<Control> "))
EOD
uim-fep
