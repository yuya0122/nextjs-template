-- diariesテーブルの作成 (IDをアプリケーション側で管理)
CREATE TABLE IF NOT EXISTS public.examples (
  id UUID PRIMARY KEY,  -- アプリケーション側でUUIDを生成
  created_at TIMESTAMP WITH TIME ZONE,  -- アプリケーション側で管理
  updated_at TIMESTAMP WITH TIME ZONE   -- アプリケーション側で管理
);


-- ストレージバケットの作成（公開設定でバケットを作成）
DO $$
BEGIN
  INSERT INTO storage.buckets (id, name, public, avif_autodetection, file_size_limit, allowed_mime_types)
  VALUES ('example_buecket', 'example_buecket', true, false, 10485760, ARRAY['image/jpeg', 'image/png', 'image/gif'])
  ON CONFLICT (id) DO NOTHING;
EXCEPTION WHEN OTHERS THEN
  RAISE NOTICE 'バケット作成中にエラーが発生しました: %', SQLERRM;
END $$;

-- 既存のストレージポリシーをドロップ
DROP POLICY IF EXISTS "allow_public_reads" ON storage.objects;

-- ストレージの公開読み取りポリシー（誰でも読み取り可能）
CREATE POLICY "allow_public_reads"
ON storage.objects
FOR SELECT
TO anon
USING (bucket_id = 'example_buecket');
