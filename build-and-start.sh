#!/bin/bash

set -e

####################
### Use argument ###
####################

# Check if path argument is provided
#if [ -z "$1" ]; then
#  echo "Usage: $0 <path> (e.g., /test)"
#  exit 1
#fi

#TARGET_PATH="$1"



################################
### Use environment variable ###
################################

if [ -z "$FLOWISE_SUBPATH" ]; then
  echo "Environment variable FLOWISE_SUBPATH is required."
  exit 1
fi

TARGET_PATH="$FLOWISE_SUBPATH"



######################
### Build process ####
######################

echo "[1/3] Set subpath to Flowise..."

# Step 1: Copy UI .env file
echo "Copying UI environment file..."
cp -f packages/ui/.env.example packages/ui/.env

# Step 2: Replace VITE_BASE_URL in UI .env
echo "Updating VITE_BASE_URL in packages/ui/.env..."
sed -i "s|^VITE_BASE_URL=.*|VITE_BASE_URL=${TARGET_PATH}|" packages/ui/.env

# Step 3: Copy Server .env file
echo "Copying Server environment file..."
cp -f packages/server/.env.example packages/server/.env

# Step 4: Replace FLOWISE_BASE_URL in Server .env
echo "Updating FLOWISE_BASE_URL in packages/server/.env..."
sed -i "s|^FLOWISE_BASE_URL=.*|FLOWISE_BASE_URL=${TARGET_PATH}|" packages/server/.env

echo "Environment setup completed successfully."
echo


echo "[2/3] Build packages..."

echo "Build packages"
#cd packages/server
#pnpm build
#cd ../ui
#cd packages/ui

pnpm build

echo "Project build completed successfully."
echo


echo "[3/3] Starting Flowise server..."
#cd ../../
pnpm start 

