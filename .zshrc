# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


#export PATH="/opt/android-sdk/platform-tools:$PATH"
#export CUDA_HOME=/usr/local/cuda
#export LD_LIBRARY_PATH=${CUDA_HOME}/lib64
#export PATH=${CUDA_HOME}bin:${PATH}
export EDITOR=nvim
# export PYTHONPATH=/opt/miniconda/bin/python
source ~/dotfiles/zsh/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

antigen bundle skywind3000/z.lua

# antigen theme robbyrussell
source ~/dotfiles/zsh/powerlevel10k/powerlevel10k.zsh-theme
antigen apply

alias vim=nvim
alias vi=nvim
alias activate="source /opt/miniconda/bin/activate"
# alias deactivate="source /opt/miniconda/bin/deactivate"
alias deactivate="conda deactivate"
# alias conda="/opt/miniconda/bin/conda"
# alias cnpm="npm --registry=https://registry.npmmirror.com \
# --cache=$HOME/.npm/.cache/cnpm \
# --disturl=https://npmmirror.com/dist \
#--userconfig=$HOME/.cnpmrc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/dotfiles/zsh/.p10k.zsh ]] || source ~/dotfiles/zsh/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/opt/miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/opt/miniconda/etc/profile.d/conda.sh" ]; then
#         . "/opt/miniconda/etc/profile.d/conda.sh"
#     else
#         export PATH="/opt/miniconda/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<
