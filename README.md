# dotfiles
Things from various dotfiles to remember and re-use, and references for setting up a new mac


## Set up guides
* https://www.stuartellis.name/articles/mac-setup/</br>
  A lot of useful security settings and basic things to install
* https://www.robinwieruch.de/mac-setup-web-development/</br>
  Good system preferences section

## git setup
* Create actual `.gitconfig`, `.gitconfig-work`, `.gitconfig-personal` in ~ and fill in the details as necessary. Make sure that all paths are absolute paths in the credentials, _e.g._ `/Users/tk/...`.

## Get these
* homebrew
* macports
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
* wezterm</br>
  `sudo port install wezterm`
  * point softlink from `$HOME/.wezterm.lua` to `wezterm/.wezterm.lua`
* vim
  * Make `~/.vim` and subdirs</br>
    `mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged`
  * link `~/.vimrc` to dotfiles `.vimrc`
  * [powerline fonts](https://github.com/powerline/fonts)
  * [vim-plug](https://github.com/junegunn/vim-plug)
  * open vim, then `:PlugInstall`
* [`uv`](https://github.com/astral-sh/uv)
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
* [noTunes](https://github.com/tombonez/noTunes) (stop itunes from opening when headphones are connected)</br>
  `brew install --cask notunes`
* bat</br>
  `brew install bat`
* fzf for better ctrl + r</br>
  `brew install fzf`
* [KeePassXC](https://keepassxc.org)
  * If `keepassxc-cli` is not in `$PATH`</br>
    `sudo ln -s /System/Volumes/Data/Applications/KeePassXC.app/Contents/MacOS/keepassxc-cli /usr/local/bin`
* ripgrep</br>
  `brew install ripgrep`
* delta</br>
  `brew install git-delta`
* fd</br>
  `sudo port install fd`
* [hidden](https://github.com/dwarvesf/hidden)</br>
  `brew install --cask hiddenbar`
