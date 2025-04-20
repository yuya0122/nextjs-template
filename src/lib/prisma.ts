import { PrismaClient } from '@prisma/client';

// PrismaClientのグローバルインスタンスを宣言
const globalForPrisma = global as unknown as {
  prisma: PrismaClient | undefined;
};

// 開発環境でのホットリロード時に複数のインスタンスが作成されるのを防ぐ
export const prisma =
  globalForPrisma.prisma ??
  new PrismaClient({
    log: process.env.NODE_ENV === 'development' ? ['query', 'error', 'warn'] : ['error'],
  });

if (process.env.NODE_ENV !== 'production') globalForPrisma.prisma = prisma;
