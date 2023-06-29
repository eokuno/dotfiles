#!/bin/sh

# PROGRAM_LANGUAGES="
# ruby
# nodejs
# php 
# python 
# kotlin 
# java 
# rust 
# flutter 
# golang 
# rust
# "

# for lang in $PROGRAM_LANGUAGES
# do
#     echo $lang
# done

# プログラム言語のインストール
which asdf >/dev/null 2>&1 && asdf plugin add ruby && asdf install ruby latest && asdf global ruby latest
which asdf >/dev/null 2>&1 && asdf plugin add nodejs && asdf install nodejs latest && asdf global nodejs latest
which asdf >/dev/null 2>&1 && asdf plugin add php && asdf install php latest && asdf global php latest
which asdf >/dev/null 2>&1 && asdf plugin add python && asdf install python latest && asdf global python latest
which asdf >/dev/null 2>&1 && asdf plugin add kotlin && asdf install kotlin latest && asdf global kotlin latest
which asdf >/dev/null 2>&1 && asdf plugin add java && asdf install java lastest
which asdf >/dev/null 2>&1 && asdf plugin add rust && asdf install rust latest && asdf global rust latest

# Terraformのインストール
which asdf >/dev/null 2>&1 && asdf plugin add terraform && asdf install terraform lastest && asdf global terraform latest

# Serverless Frameworkのインストール
which asdf >/dev/null 2>&1 && asdf plugin add serverless && asdf install terraform serverless  && asdf global terraform serverless