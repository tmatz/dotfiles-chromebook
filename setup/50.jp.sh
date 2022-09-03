sudo apt install uim-fep uim-mozc
PROFILE=~/.profile
test -w ${PROFILE} && grep -q '^uim-fep' ${PROFILE} || cat << EOD >> ${PROFILE}
uim-fep -sb
EOD
uim-fep -sb
