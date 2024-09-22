#!/bin/bash

# Command Line Toolsがインストールされているか確認
if ! xcode-select -p &>/dev/null; then
  echo "Xcode Command Line Toolsをインストールします..."
  xcode-select --install
fi

### シンボリックリンクの作成
echo "シンボリックリンクを作成します..."
./_link.sh

exec $SHELL -l
