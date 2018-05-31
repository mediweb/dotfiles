alias g='git'
alias gf='git flow'
alias gap='git add -p'
alias gst='git status'
alias goback='git checkout HEAD~'
gofwd() {
  git checkout $(git rev-list --topo-order HEAD.."$*" | tail -1)
}
