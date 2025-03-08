FROM node:20-bullseye

# 必要なパッケージのインストール
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install git curl wget

# 作業ディレクトリの設定
WORKDIR /workspace

# Node.jsのグローバルパッケージをインストールするディレクトリの権限を設定
RUN mkdir -p /usr/local/lib/node_modules \
    && chown -R node:node /usr/local/lib/node_modules \
    && mkdir -p /usr/local/bin \
    && chown -R node:node /usr/local/bin

# ユーザーをnodeに切り替え
USER node

# npmの設定
RUN npm config set prefix /usr/local 