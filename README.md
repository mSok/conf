# conf
Файлы настроек для vim, zsh, tmux. необходимо склонировать репозиторий и настроить символьные ссылки.

- vim требует систему установки плагино VimPlug. 
`curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

- настройка ссылок:
  `cd ~
  ln ~/config/vim/.vimrc .
  ln ~/config/tmux/.tmux.conf .
  ln ~/config/sh/.zshrc .
  ln ~/config/git/.gitconfig .
  `
