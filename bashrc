export LSCOLORS=GxFxCxDxBxegedabagaced
export CLICOLOR=1

alias la="ls -a"
alias ll="ls -l"
alias ..="cd .."
alias ...="cd ../../"
alias .4="cd ../../../"
alias .5="cd ../../../../"

alias GRADLE_DEFAULT="~/.gradle/ligradle/gradle"
gradle() {
    if [ -f "./gradlew" ];
    then
        ./gradlew "$@"
    else
        GRADLE_DEFAULT "$@"
    fi
}

