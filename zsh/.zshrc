# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

COMPLETION_WAITING_DOTS="true"

plugins=(
	git
    terraform
	zsh-autosuggestions
	zsh-syntax-highlighting

	golang
	rust

	colored-man-pages
	colorize
	last-working-dir
)

source $ZSH/oh-my-zsh.sh

##########################
### User configuration ###
##########################

# Aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias vi="nvim"
alias vim="nvim"
alias nvd="neovide"
alias x="exit"

alias ll="exa -lah --git --icons --group-directories-first"
alias ls="exa -1 --icons --group-directories-first"

# K8
alias k="kubectl"
alias kctx="kubectx"
alias kns="kubens"
alias ks="kubeseal"

# Tmux
alias t="tmux"
alias tn="tmux new -s"
alias ta="tmux attach -t"
alias ts="tmux detach"
alias tls="tmux ls"
alias tks="tmux kill-session -t"

###### REDACTED ######
###### REDACTED ######
###### REDACTED ######
alias bupg="brew update && brew upgrade && brew upgrade --cask && brew cleanup"

alias k="kubectl"
alias kctx="kubectx"
alias kns="kubens"
alias ks="kubeseal"

# Add tfenv managed Terraform to the path
# export PATH="/opt/homebrew/Cellar/tfenv/3.0.0/versions/1.3.6:$PATH"
export PATH="/opt/homebrew/Cellar/tfenv/3.0.0/versions/0.12.20:$PATH"

# Git aliases
alias gd="git diff"
alias gp="git push"
alias gc="git commit -S"
alias gpl="git pull"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gsw="git switch"
alias gswc="git switch -c"
alias gcom="git checkout master"

# GCP aliases
alias gcp-login="gcloud auth login"

# K8 Clusters
###### REDACTED ######
###### REDACTED ######
###### REDACTED ######
###### REDACTED ######

###### REDACTED ######
###### REDACTED ######

###### REDACTED ######
###### REDACTED ######

###### REDACTED ######

###### REDACTED ######
###### REDACTED ######

# Sign commits
export GPG_TTY=$(tty)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add Go Tools to the PATH
export PATH=$PATH:$(go env GOPATH)/bin

ssh-add --apple-use-keychain ~/.ssh/id_ed25519

tmux-window-name() {
	($TMUX_PLUGIN_MANAGER_PATH/tmux-window-name/scripts/rename_session_windows.py &)
}
add-zsh-hook chpwd tmux-window-name
