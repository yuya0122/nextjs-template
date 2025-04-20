#!/bin/bash
set -e # Exit immediately if a command exits with a non-zero status.

echo "Running post create command script..."

# Install dependencies
echo "Installing npm dependencies..."
npm install

# Generate Prisma client
echo "Generating Prisma client..."
npx prisma generate

# Push Prisma schema to the database (using Supabase DB)
echo "Pushing Prisma schema to the database..."
npx prisma db push --force-reset

echo "Post create command script finished successfully." 