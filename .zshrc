# dotfiles: exports
for file in ~/.{exports,_exports}; do
  [ -r "${file}" ] && [ -f "${file}" ] && source "${file}"
done; unset file

plugins=()

source "${ZSH}/oh-my-zsh.sh"

# dotfiles: aliases, functions, sources
for file in ~/.{aliases,_aliases,functions,_functions,sources,_sources}; do
  [ -r "${file}" ] && [ -f "${file}" ] && source "${file}"
done; unset file

# gpg-agent
[ -f ~/.gnupg/.gpg-agent-info ] && source ~/.gnupg/.gpg-agent-info
if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
  export GPG_AGENT_INFO
else
  eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
fi
