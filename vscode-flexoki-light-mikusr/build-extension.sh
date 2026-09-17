#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "==> Packaging Flexoki Light VS Code Extension..."

DIST_DIR="$SCRIPT_DIR/dist"
mkdir -p "$DIST_DIR"

VSIX_NAME="vscode-flexoki-light-mikusr-1.0.0.vsix"
OUTPUT_VSIX="$DIST_DIR/$VSIX_NAME"

rm -f "$OUTPUT_VSIX"

# Package extension using vsce (or npx @vscode/vsce if not locally installed)
if command -v vsce &>/dev/null; then
  vsce package --no-dependencies -o "$OUTPUT_VSIX"
else
  npx --yes @vscode/vsce package --no-dependencies -o "$OUTPUT_VSIX"
fi

echo "==> Successfully created: $OUTPUT_VSIX"
echo "==> To install in VS Code / Cursor / VSCodium:"
echo "    code --install-extension $OUTPUT_VSIX"
echo "    or install via GUI: Extensions -> ... -> Install from VSIX..."
