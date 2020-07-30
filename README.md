#### 1 - i3

```sh
# Instale o i3
sudo pacman -S i3 polybar nitrogen dmenu rofi picom

# Va para o diretório do dotfiles
cd code/github/dotfiles

# Copie os arquivos de configuração do i3
cp files/i3config $HOME/.config/i3/config

# Copie os arquivos de configuração do polybar
cp files/polybar $HOME/.config/polybar -r
```

#### 2 - Alacritty Terminal

```sh
# Instale o Alacritty
sudo pacman -S alacritty

# Instale a fonte Fira Code
yay -S ttf-fira-code

# Crie o diretório de configuração do alacritty
mkdir $HOME/.config/alacritty

# Copie o arquivo de configuração
cp files/alacritty.yml $HOME/.config/alacritty/alacritty.yml
```

#### 3 - Zshell

```sh
# Verifique se o Zshell está instalado
zsh --version

# Instale o Oh My Zshell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Instale o tema spaceship
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

# Crie um link simbólico para o tema
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Copie os arquivos de configuração do Zshell
cp files/zshrc $HOME/.zshrc
```

#### 4 - VIM

```sh
# Instale o vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copie os arquivos de configuração do vim
cp files/vimrc $HOME/.vimrc

# Inicie o vim
vim

# Instale os plugins
:PluginInstall
```

#### 5 - VS code

```sh
# Instale o yay
sudo pacman -S yay

# Instale o code
yay -S code
```

Instale a extensão settings sync e faça o login com o github

#### 6 - Git

```sh
# Va para o diretório do dotfiles
cd code/github/dotfiles

# Copie o arquivo de configuração para a sua home
cp files/gitconfig $HOME/.gitconfig

# Crie uma nova chave ssh
ssh-keygen -t rsa -b 4096 -C "neto.daniribeiro@gmail.com"

# Deixe rodando em background
eval "$(ssh-agent -s)"

#Adicione a sua lista de ssh keys
ssh-add ~/.ssh/id_rsa

# Instale o github cli
yay -S github-cli

# Mude o tipo de protocolo
gh config set git_protocol ssh
```

Adicione a key na sua conta do github

#### 7 - Tmux

```sh
# Instale o tmux
sudo pacman -S tmux

# Instale o tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Copie os arquivos de configução
cp files/tmux.conf $HOME/.tmux.conf

# Entre no tmux
tmux

# Instale os plugins
prefix (CRTL + A) + I (shift + i)
```
