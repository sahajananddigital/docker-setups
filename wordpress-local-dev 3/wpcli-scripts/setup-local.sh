#!/bin/bash

set -e

echo "Waiting for WordPress to be ready..."
sleep 10

cd /var/www/html

echo "Running search-replace for local environment..."
wp search-replace "${LIVE_URL}" "${LOCAL_URL}" --allow-root

echo "Creating local admin user if not exists..."
wp user create "${LOCAL_ADMIN_USER}" "${LOCAL_ADMIN_EMAIL}" --role=administrator --user_pass="${LOCAL_ADMIN_PASS}" --allow-root || true

echo "Local setup complete!"
