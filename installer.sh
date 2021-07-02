#! /bin/sh -

if [ "X-h" = "X$1" ];
then
  tee<<EOF;
TODO help stuff.
EOF
  exit 0;
fi

# Variables
repoUrl="https://github.com/albaropereyra/zshconf";
fileName=${repoUrl##*/};
personalZshrcFile="${HOME}/.personalZshrc";

if [ "X$(uname -s)" = "XDarwin" ];
then
  if [ ! -e /usr/local/Cellar/zsh ];
  then
    # Install zsh
    brew install zsh;
  fi
fi

if [ ! -e ${HOME}/.oh-my-zsh ];
then
  # Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
fi

git clone $repoUrl ${HOME}/${fileName};
mv ${HOME}/${fileName}/.zshrc ${HOME}/.zshrc;
touch $personalZshrcFile
rm -rf ${HOME}/${fileName};
printf "ZSH conf has been updated.\n";
