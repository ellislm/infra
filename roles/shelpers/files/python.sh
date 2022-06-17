alias expypath='export PYTHONPATH=$(pwd):$PYTHONPATH'
alias pypath='echo $PYTHONPATH'

alias ipython='ipython --TerminalInteractiveShell.editing_mode=vi'

alias prup='pip3 install -r $VIRTUAL_ENV/../requirements.txt'
alias pred='vim $VIRTUAL_ENV/../requirements.txt'
alias predup='vim $VIRTUAL_ENV/../requirements.txt && pip3 install -r $VIRTUAL_ENV/../requirements.txt'

alias vdn='deactivate'


vup() {
  . ./env/bin/activate
}

condup() {
  CURR_FOLDER=$(pwd)
  CURR_FOLDER=$(basename $CURR_FOLDER)

  conda activate $CURR_FOLDER
}

vnew() {
  CURR_FOLDER=$(pwd)
  CURR_FOLDER=$(basename $CURR_FOLDER)

  python3 -m venv --prompt $CURR_FOLDER ./env && . ./env/bin/activate
}


condnew() {
  CURR_FOLDER=$(pwd)
  CURR_FOLDER=$(basename $CURR_FOLDER)

  conda create -n $CURR_FOLDER
}

alias conddn='conda deactivate'
alias condinst='conda install --experimental-solver=libmamba'
