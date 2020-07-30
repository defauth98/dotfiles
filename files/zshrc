# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/defauth/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# My alias
#alias cat="bat"
alias manual="tldr"
alias ls="exa -l"
alias zshc='vim ~/.zshrc'
alias ohg='vim ~/.oh-my-zsh'
alias ys="yarn start"
alias yd="yarn dev"
alias dstop="sudo systemctl stop docker"
alias dstart="sudo systemctl start docker"
alias desec="$HOME/organizacao/desec.sh"
alias ethical="$HOME/organizacao/ethical.sh"
alias metasploitable="VBoxManage startvm 'Metasploitable'"
alias winxp="VBoxManage startvm 'IE6 - WinXP'"
alias meudia="clear && cat $HOME/organizacao/meudia.md"
alias i3c="vim .config/i3/config"
alias myrepo="echo 'https://github.com/defauth98?tab=repositories'"
alias repo='gh repo view  | grep View'
# Spaceship config
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="↳"
SPACESHIP_CHAR_SUFFIX=" "

# Simplify prompt if we're using Hyper
# if [[ "$TERM_PROGRAM" == "Hyper" ]]; then
#   SPACESHIP_PROMPT_SEPARATE_LINE=false
#   SPACESHIP_DIR_SHOW=true
#   SPACESHIP_GIT_BRANCH_SHOW=false
# fi


### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

PATH="/home/defauth/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/defauth/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/defauth/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/defauth/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/defauth/perl5"; export PERL_MM_OPT;
