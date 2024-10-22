alias vi='nvim'
alias vim='nvim'

export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin
# Function to get current git branch and status
git_prompt_info() {
  if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    local branch=$(git symbolic-ref --short HEAD 2>/dev/null || git describe --tags --exact-match 2>/dev/null)
    
    if [[ -n $(git status --porcelain) ]]; then
      echo "%F{red}($branch*)%f "
    else
      echo "%F{red}($branch)%f "
    fi
  fi
}

# Update the prompt to include git info
# We use `$(...)` to evaluate the function inside double quotes
autoload -Uz vcs_info
setopt prompt_subst

PROMPT='%F{blue}%n%f @ %F{green}%1d%f $(git_prompt_info)'


