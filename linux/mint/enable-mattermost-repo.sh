#!/bin/bash

set -euo pipefail

REPO_PUBLIC_KEY="https://deb.packages.mattermost.com/pubkey.gpg"
REPO_URL="https://deb.packages.mattermost.com"
DISTRO_FLAGS=("${STABLE:-yes}" "${TESTING:-no}" "${UNSTABLE:-no}")
DISTROS=("stable" "testing" "unstable")
REPO_KEY_FILE="/etc/apt/trusted.gpg.d/mattermost.gpg"

if [ ! -f "${REPO_KEY_FILE}" ] || [ "${UPDATE_GPG_KEY:-no}" == "yes" ]; then
  curl -sSL ${REPO_PUBLIC_KEY} | gpg --dearmor | tee "${REPO_KEY_FILE}" >/dev/null
fi

for i in "${!DISTRO_FLAGS[@]}"; do
  install=${DISTRO_FLAGS[$i]}
  distro=${DISTROS[$i]}
  repo_file="/etc/apt/sources.list.d/mattermost_${distro}.list"

  if [ "${install}" == "yes" ]; then
    echo "deb ${REPO_URL} ${distro} main" | tee "${repo_file}" >/dev/null
  else
    if [ -f "${repo_file}" ]; then
      rm "${repo_file}"
    fi
  fi
done

apt update
