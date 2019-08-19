#! /bin/sh -

if [ "X-h" = "X$1" ];
then
  cat<<EOF;
TODO help stuff.
EOF
  exit 0;
fi

# Variables
repoUrl="https://github.com/albaropereyra/zshconf";
fileName=${repoUrl##*/};

git clone $repoUrl ~/${fileName};
mv ~/${fileName}/.zshrc ~/.zshrc;
rm -rf ~/${fileName};
printf "ZSH conf has been updated.\n";
