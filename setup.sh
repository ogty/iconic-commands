eval brew --version
if [ $? -eq 127 ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval brew install librsvg
fi

eval npm --version
if [ $? -eq 127 ]; then
  brew install npm
  eval npm install -g fileicon
fi

currentDirectory=$(cd $(dirname $0);pwd)
echo 'export PATH="$PATH:'$currentDirectory\" >> ~/.zshrc
source ~/.zshrc
sudo chmod 755 $currentDirectory/mimkdir $currentDirectory/mitouch
