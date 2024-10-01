export COLORTERM=truecolor

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

GEM_BIN_PATH="$HOME/.local/share/gem/ruby/3.0.0/bin"
export PATH="$GEM_BIN_PATH:$PATH"
