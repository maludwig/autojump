#!/bin/bash
set -e

yum install -y '@Development Tools' bzip2-devel openssl-devel readline-devel sqlite-devel libffi-devel
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
export PATH="/root/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv install 3.3.7
pyenv install 3.7.1
pyenv global 3.3.7

for ONE in /root/.pyenv/versions/*; do
  $ONE/bin/python -m venv /root/.virtualenvs/v$(basename "$ONE")
done

mkdir /app
git clone https://github.com/maludwig/autojump.git /app/autojump
cd /app/autojump

for VENV in /root/.virtualenvs/*/bin/activate; do
  source "$VENV"
  pip install mock coverage ipdb ipython pytest pre-commit
  coverage run --source=bin/ --omit=bin/autojump_argparse.py -m py.test -vv -rxs --tb native -s --strict
  pre-commit
  pre-commit run --all-files
  deactivate
done

pre-commit
deactivate
rm -r ~/p3*
rm -rf ~/p3*
pyenv reinstall 3.3.7
pyenv
pyenv uninstall 3.3.7
pyenv uninstall 3.7.1
yum install zlib zlib-devel
pyenv install 3.3.7 && pyenv install 3.7.1
for ONE in /root/.pyenv/versions/*; do echo $ONE; done
for ONE in /root/.pyenv/versions/*; do echo $ONE/bin; done
for ONE in /root/.pyenv/versions/*; do echo $ONE/bin/py*; done
for ONE in /root/.pyenv/versions/*; do echo $ONE/bin/pyth*; done
for ONE in /root/.pyenv/versions/*; do echo $ONE/bin/python; done
for ONE in /root/.pyenv/versions/*; do $ONE/bin/python --version; done
mkdir ~/.virtualenvs
for ONE in /root/.pyenv/versions/*; do $ONE/bin/python -m venv ~/.virtualenvs/$(basename "$ONE"); done
ll ~/.virtualenvs/
ll ~/.virtualenvs/*/bin
source ~/.virtualenvs/3.3.7/bin/activate
pip
pip install mock coverage ipdb ipython pytest pre-commit
pre-commit
vim ~/.ssh/id_rsa
yum install -y vim
vim ~/.ssh/id_rsa
chmod 600 ~/.ssh/*
ssh-add ~/.ssh/id_rsa
ensure_running_agent () {     if [ -f "${SSH_ENV}" ]; then         . "${SSH_ENV}" > /dev/null;         ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {             start_agent;         };     else         start_agent;     fi; }
ensure_running_agent
start_agent () {     echo "Initialising new SSH agent...";     /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}";     echo succeeded;     chmod 600 "${SSH_ENV}";     . "${SSH_ENV}" > /dev/null;     /usr/bin/ssh-add; }
start_agent
SSH_ENV=$HOME/.ssh/environment
start_agent
pre-commit
ll
pre-commit --hel[p
pre-commit --help
pre-commit run
pre-commit run --help
pre-commit run --all-files
pip install --upgrade autopep8
autopep8 --in-place --aggressive --ignore=E731 --max-line-length=131
autopep8 --in-place --aggressive --ignore=E731 --max-line-length=131 tests/
autopep8 --in-place --aggressive --ignore=E731 --max-line-length=131 -r tests/
autopep8 --in-place --aggressive --ignore=E731 --max-line-length=131 -r -vv tests/
gits
git status
git diff
history
history -n
history
history --help
history | cut -c8-