. .gh-api-examples.conf

# https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-an-installation#
# https://api.github.com/app/installations/:installation_id/access_tokens

installation_id=${default_installation_id}

JWT=$(./tiny-call-get-jwt.sh ${default_app_id})

curl --silent ${curl_custom_flags} \
     -X POST \
     -H "Authorization: Bearer ${JWT}" \
     -H "Accept: application/vnd.github.machine-man-preview+json" \
        ${GITHUB_API_BASE_URL}/app/installations/${installation_id}/access_tokens
