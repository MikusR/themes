# Flexppuccin for VS Code

A warm variant of the [Catppuccin Latte](https://github.com/catppuccin/vscode) theme for Visual Studio Code (and Cursor, VSCodium, etc.). It is a port of [Flexppuccin for JetBrains](../jetbrains-flexppuccin).

Catppuccin Latte's cool blue-slate neutrals are replaced with the warm paper and ink tones from [Flexoki Light](https://stephango.com/flexoki) by Steph Ango. Catppuccin's pastel accents and syntax highlighting are kept as they are.

## Variants

- **Flexppuccin**: italic comments and keywords
- **Flexppuccin (No Italics)**: no italics in code

## Palette

| Token | Catppuccin Latte | Flexppuccin | Flexoki Token |
| :--- | :--- | :--- | :--- |
| `base` | `#eff1f5` | **`#fffcf0`** | `paper` |
| `mantle` | `#e6e9ef` | **`#f2f0e5`** | `base-50` |
| `crust` | `#dce0e8` | **`#e6e4d9`** | `base-100` |
| `surface0` | `#ccd0da` | **`#dad8ce`** | `base-150` |
| `surface1` | `#bcc0cc` | **`#cecdc3`** | `base-200` |
| `surface2` | `#acb0be` | **`#b7b5ac`** | `base-300` |
| `overlay0` | `#9ca0b0` | **`#9f9d96`** | `base-500` |
| `overlay1` | `#8c8fa1` | **`#878580`** | `base-500` |
| `overlay2` | `#7c7f93` | **`#6f6e69`** | `base-600` |
| `subtext0` | `#6c6f85` | **`#575653`** | `base-700` |
| `subtext1` | `#5c5f77` | **`#403e3c`** | `base-800` |
| `text` | `#4c4f69` | **`#100f0f`** | `black` |

## Installation

1. Use the prebuilt `dist/flexppuccin-1.0.0.vsix` committed in this repo, or build the extension (needs Node.js):
   ```bash
   ./build-extension.sh
   ```
2. Install it:
   ```bash
   code --install-extension dist/flexppuccin-1.0.0.vsix
   ```
   Or in VS Code: **Extensions → ⋯ → Install from VSIX...**
3. Select **Flexppuccin** with **Preferences: Color Theme** (`Ctrl+K Ctrl+T`).

## Customizing Colors

The theme files in `themes/` are generated with the official [`@catppuccin/vscode`](https://www.npmjs.com/package/@catppuccin/vscode) compiler, using the colors in `palette.json` as overrides. Edit `palette.json`, then regenerate:

```bash
npm install
npm run generate
```

`./build-extension.sh` also regenerates the themes before packaging.

## License & Attribution

This is an unofficial fork, not affiliated with or endorsed by the Catppuccin organization.

- Based on [catppuccin/vscode](https://github.com/catppuccin/vscode) (MIT, © 2021 Catppuccin)
- Neutral palette from [Flexoki](https://stephango.com/flexoki) by Steph Ango (MIT)

Released under the [MIT License](./LICENSE).
