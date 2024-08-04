# Setup PyEnv
curl https://pyenv.run | bash

export PATH="$HOME/.pyenv/bin:$PATH"

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

source ~/.bashrc

sudo apt install -y zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

pyenv install -v 3.9.16
pyenv global 3.9.16

eval "$(pyenv init -)"

python3 -m pip install --extra-index-url https://google-coral.github.io/py-repo/ pycoral~=2.0

# Downgrade numpy for compatability with tensorflow
python3 -m pip install numpy==1.19.5
