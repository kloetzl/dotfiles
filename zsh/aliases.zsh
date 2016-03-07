alias ll='ls -la'
alias lh='ls -lah'
alias ...='cd ../..'
alias pacman='pacman --color=auto'
alias grep='grep --color=auto'

function(){
	local PF="make CC=clang CXX=clang++"
	local COMMON="-fno-omit-frame-pointer -O0 -g -ggdb"
	local MSANFLAGS="$COMMON -fsanitize=memory -fsanitize-memory-track-origins=2"
	local ASANFLAGS="$COMMON -fsanitize=address"
	local USANFLAGS="$COMMON -fsanitize=undefined"
	local ISANFLAGS="$COMMON -fsanitize=integer"

	alias msan="$PF CFLAGS=\"$MSANFLAGS\" CXXFLAGS=\"$MSANFLAGS -std=c++11\""
	alias asan="$PF CFLAGS=\"$ASANFLAGS\" CXXFLAGS=\"$ASANFLAGS -std=c++11\""
	alias usan="$PF CFLAGS=\"$USANFLAGS\" CXXFLAGS=\"$USANFLAGS -std=c++11\""
	alias isan="$PF CFLAGS=\"$ISANFLAGS\" CXXFLAGS=\"$ISANFLAGS -std=c++11\""
}
