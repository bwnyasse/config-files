#!/usr/bin/env bash

alias d='docker'
alias dc='docker-compose'
alias dm='docker-machine'

removeExitedContainer() {
   docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
}

dockerClean() {
  # Clean up exited container and dangling images
   removeExitedContainer
   docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}

dockerRemoveOldImages() {
    dockerClean

   # removes old from months and week
   docker images | grep 'months ago' | awk '{print $3}' | xargs --no-run-if-empty docker rmi
   docker images | grep 'weeks ago' | awk '{print $3}' | xargs --no-run-if-empty docker rmi
}

dddockerCleanEverything() {
    # Delete all containers
    docker rm $(docker ps -a -q)
    # Delete all images
    docker rmi $(docker images -q)
}