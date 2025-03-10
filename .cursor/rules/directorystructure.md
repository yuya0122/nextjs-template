```
/
├── .git/                         # Gitリポジトリ
├── .cursor/                      # Cursor設定
├── .devcontainer/                # Devcontainer設定
├── .next/                        # Next.jsのビルド成果物
├── node_modules/                 # 依存パッケージ
├── public/                       # 静的ファイル
├── src/                          # Next.jsのアプリケーションディレクトリ
│   ├── app/                      # appルーター
│   │   ├── hoge/                 # （例）hogeページのディレクトリ
│   │   │   └── page.tsx          # （例）hogeページのページコンポーネント
│   │   ├── fuga/                 # （例）fugaページのディレクトリ
│   │   │   └── page.tsx          # （例）fugaページのページコンポーネント
│   │   ├── page.tsx              # 共通ページコンポーネント
│   │   └── layout.tsx            # 共通レイアウトコンポーネント
│   ├── components/               # アプリケーションコンポーネント
│   │   ├── ui/                   # 基本UI（button, card等）
│   │   └── hoge/                 # （例）hogeページで使用するコンポーネントを配置
│   │   └── fuga/                 # （例）fugaページで使用するコンポーネントを配置
│   ├── hooks/                    # カスタムフック
│   ├── lib/                      # ユーティリティ
│   │   ├── fetch/                # API関連処理
│   │   │   ├── backend.ts        # バックエンドAPIにfetchをする関数を配置
│   │   │   ├── google.ts         # （例）googleAPIにfetchをする関数を配置
│   │   │   └── tabelog.ts        # （例）tabelogAPIにfetchをする関数を配置
│   │   ├── types.ts              # 型定義
│   │   └── utils.ts              # 共通関数
│   └── styles/                   # スタイル定義
│       └── globals.css           # グローバルスタイル
├── .env                          # 環境変数
├── .env.example                  # 環境変数のサンプル
├── .gitignore                    # Git除外設定
├── biome.json                    # Biome設定
├── next-env.d.ts                 # Next.js型定義
├── next.config.ts                # Next.js設定
├── package.json                  # プロジェクト設定
├── package-lock.json             # 依存関係ロックファイル
├── postcss.config.mjs            # PostCSS設定
├── tailwind.config.ts            # Tailwind設定
├── tsconfig.json                 # TypeScript設定
```
