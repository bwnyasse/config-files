#!/usr/bin/env bash

alias d='docker'
alias dc='docker-compose'
alias dm='docker-machine'
alias dprune='docker system prune'
alias ddf='docker system df'

function removeExitedContainer {
  # Clean up exited container
   docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
   docker rm -v $(docker ps --filter status=created -q 2>/dev/null) 2>/dev/null
   # Remove Dangling images
   docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}

function removeDanglingVolumes {
    docker volume ls -qf dangling=true | xargs -r docker volume rm
}

function dockerRemoveOldImages {
    removeExitedContainer
    removeDanglingVolumes

   # removes old from months and week
   docker images | grep 'months ago' | awk '{print $3}' | xargs --no-run-if-empty docker rmi
   docker images | grep 'weeks ago' | awk '{print $3}' | xargs --no-run-if-empty docker rmi
}

function removeRunningContainer {
   docker stop $(docker ps -aq)
   removeExitedContainer
}

function removeResetHeard {
    # Delete all containers
    docker rm $(docker ps -a -q)
    # Delete all images
    docker rmi $(docker images -q)
}
