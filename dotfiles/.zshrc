## Style for ZSH prompt.
# Define color codes
RED="%F{red}"
GREEN="%F{green}"
BLUE="%F{blue}"
WHITE="%F{white}"
RESET="%f"  # To reset the color

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lilly/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

## User Defined Aliases
## These do from my prompt something more comfortable to use for me.
alias sys="crfetch -c 1 -a FreeBSDTrident -s '>>'"
alias pkg_add="sudo pkg install"                        ## Manage installing software with 1 SHORT command.
alias pkg_rem="sudo pkg remove"                         ## Removing packages like on OpenBSD!
alias pkg_u="sudo pkg upgrade"                          ## To do a full-system upgrade more easily.
alias pkg_h="cat $HOME/.pkg_h"                          ## Help about user-defined pkg themeing.
alias clt="clear"                                       ## Abreviation of clear that is more comfortable for me.
alias halt-r="reboot now"                               ## Short reboot command.
alias headphones_out="sysctl hw.snd.default_unit=1"     ## So i can redirect my audio out to my headphones.
alias help="cat $HOME/.hlp"                             ## MISC help about user-defined aliases.
alias term-rstart="source $HOME/.zshrc"                 ## this is just so i can restart the terminal prompt without manually writting `source`

## Custom prompt.
## Final result will contain: User, Directory, Time the prompt was drawn and the "\___ BSD >" pointer.

PROMPT='%F{red}[%F{green}%n%F{red}] > %F{blue}[%F{white}%~%F{blue}] : [%F{cyan}%*%F{blue}]
      \___ %F{red}BSD %F{blue}>%f '

## This file might change in the future.
## Be aware i like changing things around for short abreviations of long commands or command chains.
