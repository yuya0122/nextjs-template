FROM node:20-bullseye

# 必要なパッケージのインストール
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install git curl wget postgresql-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl -L "https://github.com/supabase/cli/releases/latest/download/supabase_linux_arm64.tar.gz" -o supabase.tar.gz && \
    tar -xzf supabase.tar.gz -C /usr/local/bin && \
    rm supabase.tar.gz

# ワークスペースディレクトリを設定
WORKDIR /workspace