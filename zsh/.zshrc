export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
  zsh-nvm
)

COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

# User configuration

## Aliases

# Git 
alias gd="git diff"
alias gp="git push"
alias gc="git commit -S"
alias gpl="git pull"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gsw="git switch"
alias gswc="git switch -c"
alias gcom="git checkout master"
alias gwa="git worktree add"
alias gwr="git worktree remove"
alias gst="git status"

### Neovim
alias vi="nvim"
alias vim="nvim"
alias cat="bat"

### Tmux
alias t="tmux"
alias tn="tmux new -s"
alias ta="tmux attach -t"
alias ts="tmux detach"
alias tls="tmux ls"
alias tks="tmux kill-session -t"

### Others
alias bupg="brew update && brew upgrade && brew upgrade --cask && brew cleanup"
alias ll="ls -al"

## Sign commits
export GPG_TTY=$(tty)

## Add Go toolkit
export PATH=$PATH:$(go env GOPATH)/bin

## Add ssh password to keychain
ssh-add --apple-use-keychain ~/.ssh/id_ed25519

## Atuin
eval "$(atuin init zsh)"
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"

## Java
export JAVA_HOME=$(/usr/libexec/java_home)
