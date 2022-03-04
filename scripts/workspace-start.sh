#!/bin/sh

# Killing ports

echo "Kiiling ports 3000, 3001..."

kill -9 $(lsof -ti:3000,3001)

echo "Done!"

# PM2 restart

echo "Restarting PM2..."

npx pm2 kill

echo "Done!"

# Client startup

echo "Starting client..."
npx pm2 start "yarn run dev:next" --name "nextjs-client-dev"

echo "Done!"

npx pm2 logs

echo "Enjoy your time!"
exit 1