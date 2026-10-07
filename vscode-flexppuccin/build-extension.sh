#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "==> Packaging Flexppuccin VS Code Extension..."

# 1. Regenerate themes from palette.json
echo "--> Installing dependencies and regenerating theme files..."
npm install --no-audit --no-fund --silent
npm run --silent generate

# 2. Package into VSIX
DIST_DIR="$SCRIPT_DIR/dist"
mkdir -p "$DIST_DIR"

VERSION="$(node -p "require('./package.json').version")"
OUTPUT_VSIX="$DIST_DIR/flexppuccin-$VERSION.vsix"

rm -f "$OUTPUT_VSIX"

if command -v vsce &>/dev/null; then
  vsce package --no-dependencies -o "$OUTPUT_VSIX"
else
  npx --yes @vscode/vsce package --no-dependencies -o "$OUTPUT_VSIX"
fi

echo "==> Successfully created: $OUTPUT_VSIX"
echo "==> To install in VS Code / Cursor / VSCodium:"
echo "    code --install-extension $OUTPUT_VSIX"
echo "    or install via GUI: Extensions -> ... -> Install from VSIX..."
