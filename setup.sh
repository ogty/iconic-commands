if [ which brew > /dev/null ]; then else
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if [ which rsvg-convert > /dev/null ]; then else
  brew install librsvg
fi

if [ which npm > /dev/null ]; then else
  brew install npm
fi

if [ which fileicon > /dev/null ]; then else
  npm install -g fileicon
fi

currentDirectory=$(cd $(dirname $0);pwd)
echo 'export PATH="$PATH:'$currentDirectory\" >> ~/.zshrc
source ~/.zshrc
sudo chmod 755 $currentDirectory/mimkdir $currentDirectory/mitouch
