# ALIASES
alias shared='cd ~/storage/shared'
alias sdcard='cd ~/storage/external-1'
alias zshrc='vi ~/.zshrc'
alias vimrc='vi ~/.config/nvim/init.vim'

# PROMPT
PROMPT='%F{2}%2~%f %(?.%F{15}$%f.%F{9}$%f) '

# HISTORY
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY
setopt HIST_REDUCE_BLANKS

# AUTOSUGGESTION SETTINGS
ZSH_AUTOSUGGEST_MANUAL_REBIND=0
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# Vi Mode
bindkey -v
export KEYTIMEOUT=1

## Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins ## initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' ## Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} ## Use beam shape cursor for each new prompt.

# PLUGINS
source ~/.config/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

