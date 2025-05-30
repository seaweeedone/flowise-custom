#!/bin/bash

set -e

echo "[1/5] Setting up Node.js 18 repository..."
curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -

echo "[2/5] Installing Node.js 18..."
sudo dnf install -y nodejs

echo "[3/5] Installing pnpm globally..."
sudo npm install -g pnpm

echo "[4/5] Verifying installation..."
echo "Node.js version: $(node -v)"
echo "npm version: $(npm -v)"
echo "pnpm version: $(pnpm -v)"

echo "[5/5] Install dependencies and build..."
pnpm install

echo "✅ pnpm installation completed successfully."

