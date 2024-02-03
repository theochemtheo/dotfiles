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
* lsd</br>
  `brew install lsd`
* alacritty</br>
  `brew install alacritty` - app is in Applications folder
  * `mkdir -p $HOME/.config/alacritty/themes`
  * point softlinks from `$HOME/.config/alacritty/alacritty.toml` and `$HOME/.config/alacritty/themes/hyper.toml` to files in `alacritty/`

# TODO
* alt left and right keybinds for alacritty