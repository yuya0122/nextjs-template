import { createClient } from '@supabase/supabase-js';

// サーバーサイドのみでservice_role権限を持つSupabaseクライアントを作成
if (!process.env.SUPABASE_URL || !process.env.SUPABASE_SERVICE_ROLE_KEY) {
  throw new Error('環境変数 SUPABASE_URL または SUPABASE_SERVICE_ROLE_KEY が設定されていません');
}

export const supabaseServerClient = createClient(
  process.env.SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY,
  {
    auth: {
      autoRefreshToken: false,
      persistSession: false,
    },
  },
);
