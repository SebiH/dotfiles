alias reload!='. ~/.zshrc'

#Modified commands
alias ls='ls --color=auto'
alias grep='grep --color=auto'

#New commands
alias ..='cd ..'

#Privileged commands
if [ $UID -ne 0 ]; then
    alias sudo='sudo '
    alias scat='sudo cat'
    alias svim='sudo vim'
    alias update='sudo pacmatic -Syu'
fi

#pacmatic aliases
alias pac="sudo pacmatic -S"      # default action     
alias pacu="sudo pacmatic -Syu"   # '[u]pdate'         
alias pacs="pacmatic -Ss"    # '[s]earch'        
alias paci="pacmatic -Si"    # '[i]nfo'         
alias pacr="sudo pacmatic -R"     # '[r]emove'       
alias pacl="pacmatic -Sl"    # '[l]ist'        
alias pacll="pacmatic -Qqm"  # '[l]ist [l]ocal'   
alias paclo="pacmatic -Qdt"  # '[l]ist [o]rphans' 
alias paco="pacmatic -Qo"    # '[o]wner'          
alias pacf="pacmatic -Ql"    # '[f]iles'          
alias pacc="pacmatic -Sc"    # '[c]lean cache'    
alias pacm="makepkg -fci"  # '[m]ake'          
