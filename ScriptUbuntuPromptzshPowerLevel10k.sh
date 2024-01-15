#!/bin/bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo '# Configuração da interface do terminal com spaceship-prompt
SPACESHIP_PROMPT_ORDER=(
   user          # Use,rname section
   dir           # Current directory section
   host          # Hostname section
   git           # Git section (git_branch + git_status)
   hg            # Mercurial section (hg_branch  + hg_status)
   exec_time     # Execution time
   line_sep      # Line break
   jobs          # Background jobs indicator
   exit_code     # Exit code section
   char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="->"
SPACESHIP_CHAR_SUFFIX=" "
# Fim da configuração do spaceship-prompt' >> ~/.zshrc

bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

echo "### Plugins for zdharma-continuum zinit
zinit for \
   light-mode zdharma-continuum/fast-syntax-highlighting \
   light-mode zdharma-continuum/history-search-multi-word \
   light-mode zsh-users/zsh-autosuggestions \
   light-mode zsh-users/zsh-completions \
   light-mode spaceship-prompt/spaceship-prompt
### End of Zinit's plugins" >> ~/.zshrc

echo "zinit ice depth=1; zinit light romkatv/powerlevel10k" >> ~/.zshrc