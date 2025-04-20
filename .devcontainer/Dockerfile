FROM node:20-bullseye

# 必要なパッケージのインストール
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install git curl wget postgresql-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
