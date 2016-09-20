#!/usr/bin/env bash

# Setup fzf
# ---------
if [[ ! "$PATH" == *{{ ansible_env.HOME}}/.fzf/bin* ]]; then
  export PATH="$PATH:{{ ansible_env.HOME}}/.fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == *{{ ansible_env.HOME}}/.fzf/man* && -d "{{ ansible_env.HOME}}/.fzf/man" ]]; then
  export MANPATH="$MANPATH:{{ ansible_env.HOME}}/.fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "{{ ansible_env.HOME}}/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "{{ ansible_env.HOME}}/.fzf/shell/key-bindings.zsh"
