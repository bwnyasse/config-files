#!/bin/bash
# 
# @description: Script used as logger
# @author : bwnyasse

# ----
# Text Colors and Messaging Functions
readonly RED="\\033[1;31m"
readonly GREEN="\\033[1;32m"
readonly YELLOW="\\033[1;33m"
readonly MAGENTA="\\033[1;35m"
readonly GRAS="\033[1m"
readonly END="\\033[1;00m"


log_debug() {
	[[ -n $DEBUG ]] && echo -e "$MAGENTA[DEBUG]$END $*" || return 0
}

log_error() {
	echo -e "$RED [ERROR] $* $END" >&2
}

log_error_and_exit() {
	echo -e "$RED [ERROR] $*\n $END" >&2 && exit 1
}

log_info() {
	echo -e "$GREEN [INFO] $* $END"
}

log_info_and_exit() {
	echo -e "$GREEN [INFO] $* $END\n" && exit 0
}

log_warn() {
	echo -e "$YELLOW [WARN] $* $END"
}
