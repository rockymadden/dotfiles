# Source dotfiles:
for file in ~/.{exports,_exports,aliases,_aliases,wrappers,_wrappers,functions,_functions,sources,_sources}; do
  [ -r "${file}" ] && [ -f "${file}" ] && source "${file}"
done
unset file

# Tab completion:
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
  source "$(brew --prefix)/etc/bash_completion"
elif [ -f /etc/bash_completion ]; then
  source /etc/bash_completion
fi

# System statistics:
echo '--------------------------------------------------------------------------------'
archey -c
echo '--------------------------------------------------------------------------------'

# nvm:
nvm use node 2>&1 > /dev/null

# rbenv:
eval "$(rbenv init -)"
