# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{014}%s%f@%F{014}%b%f '

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{010}%n%f: %F{011}%1d%f ${vcs_info_msg_0_}> '

# PROMPT='%F{040}%n%f: %F{011}%1d%f ${vcs_info_msg_0_}> '

# WHERE
# %n = username
# %F{color}..%f = color
# %1d = working directory with 1 trailing path (or current folder)

# ADDITIONAL INFO
# ${PWD/#$HOME/~} = truncated home directory

# Reference: 
# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
# https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg