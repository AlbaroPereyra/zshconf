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

#TODO
# install zsh
# install oh-my-zsh
git clone $repoUrl ${HOME}/${fileName};
mv ${HOME}/${fileName}/.zshrc ${HOME}/.zshrc;
touch $personalZshrcFile
rm -rf ${HOME}/${fileName};
printf "ZSH conf has been updated.\n";
