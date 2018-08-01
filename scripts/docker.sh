#!/usr/bin/env bash

##### Docker aliases #####
alias do="docker"
alias dc="docker-compose"
alias dcrun="docker-compose run --rm"
alias dcrunnotty="docker-compose run --rm -T"

# containers
alias docount="docker ps -qa | wc -l"
alias dostopall="docker container stop $(docker ps -qa) || echo 'There is no containers'"
alias dormall="docker container rm $(docker ps -qa) || echo 'There is no containers'"
alias dokillall="docker container rm $(docker ps -qa) || echo 'There is no containers'"

