# Custom aliases
alias dir='dir --color=always'
alias vdir='vdir --color=always'
alias grep='grep --color=always'
alias fgrep='fgrep --color=always'
alias egrep='egrep --color=always'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -xF'
alias less='less -R'
alias lss='ls -x --color=always | less -R'
alias cd..='cd ..'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias ta='tmux attach'
alias tt='tmux attach -t'
alias tdt='tmux attach -d -t'
alias tls='tmux list-sessions'
alias tns='tmux new -s'
alias mmmm='Rscript -e "data = as.numeric (readLines (\"stdin\")); summary(data); s = sum(data); sd = sd(data); cat(\"sum: \",s,\"\\n\"); cat(\"stddev: \",sd,\"\\n\");"'
alias csvawk='awk -F "," -v OFS=","'
alias wl='wc -l'
alias ipy='ipython'
alias nb='jupyter notebook'
alias pyserv='python -m http.server 8080'
alias oc='octave-cli'

if [[ `uname` == 'Darwin' ]]
then
  alias ls='ls -x -G'
else
  alias ls='ls -x --color=always'
fi


# Stanford servers
alias corn='ssh -l jaywhang corn.stanford.edu'
alias rye01='ssh -l jaywhang rye01.stanford.edu'
alias rye02='ssh -l jaywhang rye02.stanford.edu'
