#!/usr/bin/env bash
# Powerline shell changes
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi
export POWERLINE_COMMAND=powerline
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then source /usr/share/powerline/bindings/bash/powerline.sh; fi