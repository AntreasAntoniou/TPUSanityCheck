#!/bin/bash
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

sh -c "$(curl -fsSL https://starship.rs/install.sh)"
echo 'eval "$(starship init bash)"' >> ~/.bashrc

echo 'export XRT_TPU_CONFIG="localservice;0;localhost:51011"' >> ~/.bashrc
pip install -r requirements.txt

git clone https://gist.github.com/48a11585299f9032fa4bda60c9bba593.git
cd 48a11585299f9032fa4bda60c9bba593
mkdir -p ~/.config/
rsync -ua --progress . ~/.config/starship