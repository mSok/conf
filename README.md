# conf
Файлы настроек для vim, zsh, tmux. необходимо склонировать репозиторий и настроить символьные ссылки.

- vim требует систему установки плагино VimPlug. 
`curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

- настройка ссылок:
  `cd ~
  ln ~/conf/vim/.vimrc .
  ln ~/conf/tmux/.tmux.conf .
  ln ~/conf/sh/.zshrc .
  ln ~/conf/git/.gitconfig .
  `
