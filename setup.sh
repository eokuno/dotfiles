#!/bin/bash

#---------------------------------------------
# Xcodeのインストール
#---------------------------------------------
echo "Xcodeをインストールします..."
xcode-select --install

#---------------------------------------------
# Rosettaのインストール
#---------------------------------------------
echo "Rosettaをインストールします..."
sudo softwareupdate --install-rosetta --agree-to-license

#---------------------------------------------
# Homebrewのインストール
#---------------------------------------------
echo "Homebrewをインストールします..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# which brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 必要？
# echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/e.okuno/.zprofile
# eval "$(/opt/homebrew/bin/brew shellenv)"

echo "brew doctorを実行します..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew doctor

echo "brew updateを実行します..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew update --verbose

echo "brew upgradeを実行します..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew upgrade --verbose

#---------------------------------------------
# Homebrewを利用して各種ソフトウェアのインストール
#---------------------------------------------
echo "Brewfileで管理しているアプリケーションをインストールします..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew bundle --file ./.Brewfile --verbose

echo "brew cleanupを実行します..."
which brew >/dev/null 2>&1 && brew cleanup --verbose

#---------------------------------------------
# asdfを利用して各種プログラミング言語のインストール
#---------------------------------------------
echo "プログラミング言語をインストールします..."
./_asdf.sh

#---------------------------------------------
# シンボリックリンクの作成
#---------------------------------------------
echo "シンボリックリンクを作成します..."
./_link.sh

exec $SHELL -l