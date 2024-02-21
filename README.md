# dotfiles
Things from various dotfiles to remember and re-use, and references for setting up a new mac


## Set up guides
* https://www.stuartellis.name/articles/mac-setup/</br>
  A lot of useful security settings and basic things to install
* https://www.robinwieruch.de/mac-setup-web-development/</br>
  Good system preferences section

## Get these
* homebrew
* zsh
    * [oh my zsh](https://ohmyz.sh/)
    * [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
    * `brew install zsh-autosuggestions`
    * `brew install zsh-syntax-highlighting`
* lsd</br>
  `brew install lsd`
* alacritty</br>
  `brew install alacritty` - app is in Applications folder
  * `mkdir -p $HOME/.config/alacritty/themes`
  * point softlinks from `$HOME/.config/alacritty/alacritty.toml` and `$HOME/.config/alacritty/themes/hyper.toml` to files in `alacritty/`
* vim
  * Make `~/.vim` and subdirs</br>
    `mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged`
  * link `~/.vimrc` to dotfiles `.vimrc`
  * [powerline fonts](https://github.com/powerline/fonts)
  * [vim-plug](https://github.com/junegunn/vim-plug)
  * open vim, then `:PlugInstall`
* [pipx](https://github.com/pypa/pipx)
* pyenv</br>
  `git clone https://github.com/pyenv/pyenv.git ~/.pyenv`
* `brew install grep` for `grep -P`
* `brew install gh`
* `brew install gnu-sed` for `sed -E`
* `brew install btop`
* docker
  * `brew install docker docker-credential-helper docker-buildx`
  * `brew install colima`
  * `brew services start colima`
  * `mkdir -p ~/.oh-my-zsh/plugins/docker/`
  * `curl -fLo ~/.oh-my-zsh/plugins/docker/_docker https://raw.githubusercontent.com/docker/cli/master/contrib/completion/zsh/_docker`
