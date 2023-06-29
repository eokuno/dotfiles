# Dotfiles
## 実行コマンド
```bash
bash -c "$( curl -fsSL https://raw.github.com/$eokuno/dotfiles/master/setup.sh )"
```

## リポジトリ構成
```text
.
├── setup.sh    # セットアップ実行ファイル
├── .Brewfile   # インストールするアプリケーションの管理ファイル
├── _asdf.sh    # インストールするプログラミング言語の管理ファイル
├── _link.sh    # 設定ファイルのシンボリックリンクを作成するためのファイル
├── .gitconfig  # 設定ファイル
├── .zprofile   # 設定ファイル
├── .zshrc      # 設定ファイル
├── .gitignore  # dotfilesのgitignore
└── README.md
```

<!-- ### setup.shに関して
セットアップの実行ファイル。

#### 手順
1. Xcodeのインストール
2. Rosettaのインストール
3. Homebrewのインストール 
4. Homebrew経由で各種アプリケーションをインストール
5. asdfを利用して各種プログラミング言語をインストール
6. シンボリックリンクを作成

### Brewfileに関して
Macにアプリケーションをインストールする際にHomebrewを使用してインストールすることは多いと思います。
但しパソコンを買い替えたり、移行した際に同じアプリケーションをインストールし直すのは面倒ですよね。。。
そんなときBrewfileとHomebrewのBundleコマンドを使用すれば、容易に移行前の環境を整えることができます。

Brewfileでは大きく分けて以下4種類のアプリケーション（ライブラリ）を管理しています。
1. Homebrewに正式に登録されているアプリケーション
2. Homebrewに正式に登録されていないアプリケーション
3. デスクトップアプリ（Macアプリケーション）
4. AppStoreアプリケーション

#### Brewfile構文
上記で紹介した4種類のアプリケーションをBrewfileを用いてインストールする際は、
以下のように記載します。

#### Homebrewに正式に登録されているアプリケーション
```bash
brew "<アプリケーション名>"

例）
```

#### Homebrewに正式に登録されていないアプリケーション
```bash
tap "<アプリケーション名>"
```


#### デスクトップアプリ（Macアプリケーション）
```bash
cask "<アプリケーション名>"

例）
```

caskコマンドでインストールできる一覧は[こちら](https://formulae.brew.sh/cask/)

#### AppStoreアプリケーション
```bash
mas "<アプリケーション名>", id: <id>

例）LINEのインストール
mas "LINE", id: 539883307
```

### _asdf.shに関して
対象ファイル：asdf.sh

プラグインの一覧
https://github.com/asdf-vm/asdf-plugins/tree/master/plugins

#### 設定ファイルのシンボリックファイル作成
対象ファイル：_link.sh
「_link.sh」は設定ファイルのシンボリックリンク作成の実行ファイルです。
(.)からはじまる設定ファイルを「dotfiles」リポジトリに移行したので、シンボリックリンク作成がないと設定を読み取ってもらえません。 -->

## 参考サイト
※以下サイトを参考に作成させていただいております。
- [ようこそdotfilesの世界へ](https://qiita.com/yutkat/items/c6c7584d9795799ee164)
- [dotfiles を使った環境構築の時短術(M1 Mac 向け)](https://tech.smartcamp.co.jp/entry/setup-by-dotfiles)
