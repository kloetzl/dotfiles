export ZSH=$ZDOTDIR/.zsh
source $ZSH/agnoster.zsh-theme

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

# Load and run compinit
autoload -U compinit
compinit -i

PROMPT='%{%f%b%k%}$(build_prompt) '

if [[ -z "$skip_global_compinit" ]]; then
  autoload -U compinit
  compinit
fi
if [[ -x /usr/lib/command-not-found ]] ; then
        function command_not_found_handler() {
                /usr/lib/command-not-found --no-failure-msg -- $1
        }
fi

