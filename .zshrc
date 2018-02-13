# dotfiles: exports
for file in ~/.{exports,_exports}; do
  [ -r "${file}" ] && [ -f "${file}" ] && source "${file}"
done; unset file

plugins=(autojump)

source "${ZSH}/oh-my-zsh.sh"

# dotfiles: aliases, functions, sources
for file in ~/.{exports,_exports,aliases,_aliases,functions,_functions,sources,_sources}; do
  [ -r "${file}" ] && [ -f "${file}" ] && source "${file}"
done; unset file

# ssh-agent
ssh-add -l | grep -q '.ssh/id_rsa' || ssh-add -A 2>/dev/null
