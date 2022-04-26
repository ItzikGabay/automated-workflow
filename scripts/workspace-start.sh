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
npx pm2 start ecosystem.config.js

echo "Started successfully!"

npx pm2 logs

echo "Happy coding!"
exit 1