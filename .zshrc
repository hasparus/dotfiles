source ~/.aliases
source ~/.pathExports

HISTSIZE=8000
SAVEHIST=8000

export LS_COLORS='ow=01;35;40'

export PATH=/usr/local/bin:$PATH


autoload -U promptinit; promptinit
prompt pure

alias zshrc='vim ~/.zshrc'
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

