if ! which brew > /dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if ! which npm > /dev/null; then
  brew install npm
fi

if ! which librsvg > /dev/null; then
  brew install librsvg
fi

if ! which fileicon > /dev/null; then
  npm install -g fileicon
fi

currentDirectory=$(cd $(dirname $0);pwd)
echo 'export PATH="$PATH:'$currentDirectory\" >> ~/.zshrc
source ~/.zshrc
sudo chmod 755 $currentDirectory/mimkdir $currentDirectory/mitouch
