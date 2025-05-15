#!/bin/sh

set -e

# Supabaseのコンテナを起動
supabase start \
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