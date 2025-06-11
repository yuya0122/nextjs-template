#!/bin/sh

set -e

# 10秒待機 
# コンテナが起動してから、すぐsupabase startすると以下エラーが発生するため
# supabase_db_workspace container is not ready: starting
echo "Waiting for Supabase to start..."
sleep 15

cd "$(dirname "$0")/supabase"
# Supabaseのコンテナを起動
supabase start --ignore-health-check \
-x realtime \
-x imgproxy \
-x mailpit \
-x edge-runtime \
-x logflare \
-x vector \
-x supavisor

# NPM
npm install

echo "Done!"