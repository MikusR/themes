#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "==> Packaging Flexppuccin JetBrains Theme..."

# 1. Regenerate themes if whiskers is installed
if command -v whiskers &>/dev/null; then
  echo "--> Running Whiskers to regenerate theme files..."
  whiskers --color-overrides palette.json templates/ui.theme.tera
  whiskers --color-overrides palette.json templates/editor.tera
else
  echo "--> Whiskers not in PATH; using existing generated theme files in src/main/resources/themes/."
fi

# 2. Package into JAR
DIST_DIR="$SCRIPT_DIR/dist"
mkdir -p "$DIST_DIR"
JAR_NAME="Flexppuccin.jar"
OUTPUT_JAR="$DIST_DIR/$JAR_NAME"

rm -f "$OUTPUT_JAR"

cd "$SCRIPT_DIR/src/main/resources"
jar cf "$OUTPUT_JAR" META-INF themes -C "$SCRIPT_DIR" LICENSE

echo "==> Successfully created: $OUTPUT_JAR"
echo "==> To install in JetBrains IDE:"
echo "    Settings -> Plugins -> ⚙️ (Gear Icon) -> Install Plugin from Disk... -> select $OUTPUT_JAR"
