#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

printf '\nInstalling notebook dependencies...\n'
python -m pip install -r requirements.txt

DB="data/adventure-works.db"
if [ -f "$DB" ] && [ "$(head -c 16 "$DB")" = "SQLite format 3" ]; then
  echo "Valid AdventureWorks SQLite database already present."
  exit 0
fi

printf '\nInstalling Git LFS...\n'
if ! command -v git-lfs >/dev/null 2>&1; then
  sudo apt-get update
  sudo apt-get install -y git-lfs
fi

git lfs install --skip-repo

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT
printf '\nRetrieving AdventureWorks database via Git LFS (~123 MB)...\n'
GIT_LFS_SKIP_SMUDGE=1 git clone --depth 1 https://github.com/FAU-CS6/KDD-Databases.git "$TMP_DIR/KDD-Databases"
git -C "$TMP_DIR/KDD-Databases" lfs pull --include="AdventureWorks/adventure-works.db" --exclude=""
SOURCE="$TMP_DIR/KDD-Databases/AdventureWorks/adventure-works.db"
if [ ! -f "$SOURCE" ] || [ "$(head -c 16 "$SOURCE")" != "SQLite format 3" ]; then
  echo "ERROR: AdventureWorks download is not a valid SQLite database." >&2
  exit 1
fi
mkdir -p data
cp "$SOURCE" "$DB"
echo "AdventureWorks database ready: $(du -h "$DB" | cut -f1)"
