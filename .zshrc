# My custom terminal 

 #For customizing
 autoload -U colors && colors
 export PS1="%F{214}%K{000}%n%F{015}%K{000}:%F{039}%K{000}%~%F{015}%K{000}\$ "

 export CLICOLOR=1
 export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
 alias ls='ls -Gp'

 #For Desktop
 cd ~/Desktop
 # Useful support for interacting with Terminal.app or other terminal programs
 [ -r "/etc/zshrc_$TERM_PROGRAM" ] && . "/etc/zshrc_$TERM_PROGRAM"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-23.jdk/Contents/Home

alias python='/opt/homebrew/bin/python3'
alias python3='/opt/homebrew/bin/python3'


# For opening the most used app from command line 
openapp() {
    local app_name=$(echo "$1" | tr '[:upper:]' '[:lower:]')  # Convert input to lowercase

     case "$app_name" in
        safari) open -a "Safari" ;;
        vscode|code) open -a "Visual Studio Code" ;; 
        settings) open -a "System Settings" ;;
        brave) open -a "Brave Browser";;
        mail) open -a "Mail" ;;
        *) 
            # Attempt to open other applications by name
            open -a "$(echo "$1" | tr '[:upper:]' '[:lower:]')"  # Try to open using the original name
            ;;
    esac
}
