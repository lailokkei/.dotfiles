# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=$PATH:/usr/local/zig
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/.dotfiles/cmd
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_compoptions+=(globdots)

bindkey -M menuselect '^[[Z' reverse-menu-complete
bindkey '^H' backward-kill-word
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey -s ^f "tmux-sessionizer\n"

# set -o ignoreeof

alias ls='ls --color=auto'
alias grep='grep --color=auto'

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# source ~/Repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Created by `pipx` on 2024-01-11 09:58:29
export PATH="$PATH:/home/toodemhard/.local/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/toodemhard/google-cloud-sdk/path.zsh.inc' ]; then . '/home/toodemhard/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/toodemhard/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/toodemhard/google-cloud-sdk/completion.zsh.inc'; fi

# fnm
export PATH="/home/toodemhard/.local/share/fnm:$PATH"
eval "`fnm env`"
