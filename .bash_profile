# Load dotfiles.
for file in ~/.{exports,_exports,aliases,_aliases,wrappers,_wrappers,functions,_functions,sources,_sources}; do
  [ -r "${file}" ] && [ -f "${file}" ] && source "${file}"
done
unset file

# Add tab completion for many bash commands.
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
  source "$(brew --prefix)/etc/bash_completion"
elif [ -f /etc/bash_completion ]; then
  source /etc/bash_completion
fi

# Add tab completion for SSH hostnames.
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# System statistics and information.
echo '--------------------------------------------------------------------------------'
archey -c
echo '--------------------------------------------------------------------------------'

# NVM.
nvm use node 2>&1 > /dev/null
