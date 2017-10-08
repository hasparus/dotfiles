source ~/.aliases
source ~/.pathExports

HISTSIZE=8000
SAVEHIST=8000

export LS_COLORS='ow=01;35;40'

export PATH=/usr/local/bin:$PATH

LP_PS1_POSTFIX="\n\[\033[38;5;119m\] ~> \[$(tput sgr0)\]"

[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt

source '/pio/os/cuda-8.0/set-env.sh'
alias jup="jupyter notebook --ip="*" --port=8890"

