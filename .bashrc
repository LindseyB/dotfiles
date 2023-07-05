alias git-scrub='git branch --merged | grep -v master | xargs git branch -d'
alias fuck-12='bin/rubocop -A'
alias test='bin/rails t -p'
alias memex-seed='/workspaces/github/bin/seed memex_projects --p50'
alias playwright='npm run test:playwright:chromium -w @github-ui/memex --'
alias jest='npm run test -w @github-ui/memex --'
alias sorbet-it='bin/rake db:migrate db:test:prepare; ./bin/tapioca dsl'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[0;36m\]@${GITHUB_USER}\[\033[0;00m\] ➜ \[\033[1;34m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
