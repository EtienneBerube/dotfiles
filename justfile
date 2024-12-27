# Stores configuration in this repo
fetch:
  @echo Coping files to repo
  
  -@mkdir .config

  cp -R $HOME/.config/ghostty/ .config/ghostty/
  cp $HOME/.config/starship.toml .config/starship.toml
  cp $HOME/.zshrc .
  cp $HOME/.bashrc .
  cp $HOME/.hushlogin .
  @echo Done!

# Override the configurations on this system for the configs in this repo
apply:
  @echo Coping files from repo to config

  -@mkdir $HOME/.config

  cp .config/ghostty/ $HOME/.config/ghostty/
  cp .config/starship.toml $HOME/.config/starship.toml
  cp .zshrc $HOME
  cp .bashrc $HOME
  cp .hushlogin $HOME
  @echo Done!
