# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# auto-complete
autoload -Uz compinit
compinit

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

alias cat='bat --paging=never'
alias kc='kube-capacity'
alias kx='kubectx'
alias kb='kubie'
alias k='kubectl'
alias kgn='kubectl get nodes'
alias kgp='kubectl get pods'
alias aws-auth='aws sso login --profile NRLogin'
alias pass='passmanage'
alias cb='chatblade'

export MallocNanoZone=0
# Size of the dashboard
export MAGIC_DASHBOARD_GITLOG_LINES=5
export MAGIC_DASHBOARD_FILES_LINES=6

# Disable dashboard in low terminal windows. 
# (Useful for tmux or for terminals embedded in your IDE.)
export MAGIC_DASHBOARD_DISABLED_BELOW_TERM_HEIGHT=15
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export ls='ls -GFh'
source /Users/hlatimer/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-magic-dashboard/magic-dashboard.zsh
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
export HISTTIMEFORMAT="%d/%m/%y %T "

export PATH="/Users/hlatimer/go/bin:$PATH"
source /Users/hlatimer/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/opt/homebrew/opt/go@1.17/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="/opt/homebrew/opt/go@1.21/bin:$PATH"
