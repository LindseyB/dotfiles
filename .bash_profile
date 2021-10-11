alias git-scrub='git branch --merged | grep -v master | xargs git branch -d'
alias fuck-12='bin/rubocop -A'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
