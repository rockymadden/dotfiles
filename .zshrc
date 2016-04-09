# dotfiles: exports
for file in ~/.{exports,_exports}; do
  [ -r "${file}" ] && [ -f "${file}" ] && source "${file}"
done; unset file

# zsh
DEFAULT_USER=rockymadden
DISABLE_AUTO_TITLE="true"
DISABLE_AUTO_UPDATE="true"
HIST_STAMPS="yyyy-mm-dd"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history background_jobs time context)
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
ZSH_THEME="powerlevel9k/powerlevel9k"

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
