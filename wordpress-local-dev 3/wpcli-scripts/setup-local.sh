#!/bin/bash

set -e

echo "Waiting for WordPress to be ready..."
sleep 10

cd /var/www/html

echo "Running search-replace for local environment..."
wp search-replace "${LIVE_URL}" "${LOCAL_URL}" --allow-root

wp user create "${LOCAL_ADMIN_USER}" "${LOCAL_ADMIN_EMAIL}" --role=administrator --user_pass="${LOCAL_ADMIN_PASS}" --allow-root || true

MAGIC_LINK=$(wp user session-token generate "${LOCAL_ADMIN_USER}" --url="${LOCAL_URL}/wp-admin/" --allow-root)

echo "✅ Magic login link for ${LOCAL_ADMIN_USER}: ${MAGIC_LINK}"

echo "${MAGIC_LINK}" > /wpcli-scripts/magic-login.txt

echo "Local setup complete!"
