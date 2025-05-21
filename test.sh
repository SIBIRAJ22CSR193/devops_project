#!/bin/bash
set -e

echo "📦 Installing frontend dependencies..."
cd react_project/frontend/myapp
npm install

echo "🧪 Building frontend..."
npm run build

echo "✅ Frontend build success!"

echo "📦 Installing backend dependencies..."
cd ../../backend
npm install

echo "🧪 Syntax check for backend server.js"
node --check server.js

echo "✅ Backend syntax check passed!"
