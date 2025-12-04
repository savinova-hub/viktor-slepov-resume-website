#!/usr/bin/env zsh
# T004: Optional dev script to run http-server

cd "$(dirname "$0")/../.."
npx http-server ./src/site -p 8080 -c-1
