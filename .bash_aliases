
alias gl='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate'
alias gg='git log --graph --decorate --abbrev-commit --oneline --branches --color --remotes'
alias ggs='git log --graph --decorate --abbrev-commit --oneline --branches --color --remotes --simplify-by-decoration'

alias vim='vim -p'

alias hexencode='hexdump -v -e '"'"'"\\\x"'"'"' -e '"'"'/1 "%02x"'"'"''
alias hexquote='( hexdump -v -e '"'"'18/1 "x%02X"'"'"' -e '"'"'"\n"'"'"' | sed "s/x  //g" | sed "s/x/\\\\x/g" | sed -r "s/^|$/\"/g" )'

alias rop=~/Code/ROPgadget/ROPgadget.py
