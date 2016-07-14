#!/usr/bin/env bash

alias d='docker'
alias dc='docker-compose'
alias dm='docker-machine'

dcleanup() {
  # Clean up exited container and dangling images
   docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
   docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null

   # removes old from months and week
   docker images | grep 'months ago' | awk '{print $3}' | xargs --no-run-if-empty docker rmi
   docker images | grep 'weeks ago' | awk '{print $3}' | xargs --no-run-if-empty docker rmi
}