#!/bin/bash

# スクリプトが実行されるディレクトリに移動
cd /workspace

echo "Executing database migrations..."

# PrismaのDBプッシュ（開発環境では--force-resetを使用）
npx prisma db push --force-reset

echo "Setup complete!" 