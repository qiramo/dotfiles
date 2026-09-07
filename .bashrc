#!/usr/bin/env bash

[ -z "$PS1" ] && return

HISTSIZE=100

HISTFILE=/dev/null
HISTFILESIZE=0

HISTCONTROL=ignoreboth:erasedups

alias ls='ls --color=auto'
alias grep='grep --color=auto'

__first_prompt=1

__build_ps1() {
	if [ -n "$__first_prompt" ]; then
		PS1='╭─ \u \A \w\n╰─❯ '
		unset __first_prompt
	else
		PS1='\n╭─ \u \A \w\n╰─❯ '
	fi
}

clear() {
	command clear
	__first_prompt=1
}

PROMPT_COMMAND=__build_ps1
