# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

eval "$(direnv hook zsh)"

# Use 1password ssh agent
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="spaceship"
ZSH_THEME="powerlevel10k/powerlevel10k"

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  exec_time     # Execution time
  line_sep      # Line break
  char          # Prompt character
)
SPACESHIP_GIT_STATUS_SHOW="true"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse )
# Add wisely, as too many plugins slow down shell startup.
plugins=(
aliases
# zsh-autosuggestions
#zsh-syntax-highlighting
gitfast
git-extras
colorize
yarn
brew
asdf
# jump
)
# brew
# yarn
# aws
# cask
# history
export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh
  
# User configuration
fpath=(/usr/local/share/zsh-completions $fpath)

export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
# export PATH="~/.rvm/gems/ruby-2.7.0/bin:$PATH"

# export GOPATH=~/Documents/SideProjects/go
# export PATH=$PATH:/usr/local/opt/go/libexec/bin
export TERMINAL_NOTIFIER_BIN=/usr/local/bin/terminal-notifier
export PATH="/usr/local/bin:$PATH"

# export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
# export PATH=~/Library/Android/sdk/tools:$PATH
# export PATH=~/Library/Android/sdk/platform-tools:$PATH

source $ZSH/oh-my-zsh.sh

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# You may need to manually set your language environment
export LC_ALL=fr_FR.UTF-8
export LANG=fr_FR.UTF-8

# Avoid duplicated entries in history
export HISTCONTROL=ignoreboth:erasedups

# Share history between all tabs
setopt inc_append_history
setopt share_history
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/usr/local/sbin:$PATH"

TERM=xterm-256color
source ~/.zsh/completion/scalingo_complete.zsh

fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  . ~/.config/exercism/exercism_completion.zsh
fi

export PATH="/usr/local/opt/swagger-codegen@2/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# source /Users/GUL/.config/op/plugins.sh

export EDITOR=nvim
export VISUAL="$EDITOR"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

# pnpm
export PNPM_HOME="/Users/GUL/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

autoload -U compinit
compinit -i

source <(fzf --zsh)
export FZF_DEFAULT_OPTS="--height ~40% --layout reverse --border"

eval "$(mise activate zsh)"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
