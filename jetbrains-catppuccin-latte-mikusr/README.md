# Catppuccin Latte Warm (Flexoki-inspired) for JetBrains

A customized warm variant of the [Catppuccin Latte](https://github.com/catppuccin/jetbrains) theme for JetBrains IDEs (IntelliJ IDEA, WebStorm, PyCharm, CLion, GoLand, Android Studio, RustRover, etc.).

Original Catppuccin Latte uses cool blue/slate undertones (`#eff1f5`, `#e6e9ef`, `#dce0e8`). This theme replaces them with the warm paper and neutral tones from [Flexoki Light](https://stephango.com/flexoki) by Steph Ango (`#FFFCF0`, `#F2F0E5`, `#E6E4D9`), creating an analog ink-on-paper feel with Catppuccin's soothing pastel syntax highlighting.

## Palette Comparison

| Token | Original Cool Blue | Flexoki Light Paper (`mikusr`) | Flexoki Token | Role |
| :--- | :--- | :--- | :--- | :--- |
| `base` | `#eff1f5` | **`#fffcf0`** | `paper` (`bg`) | Editor & window background |
| `mantle` | `#e6e9ef` | **`#f2f0e5`** | `base-50` (`bg-2`) | Tool windows, sidebars, panels |
| `crust` | `#dce0e8` | **`#e6e4d9`** | `base-100` (`ui`) | Status bar, inactive tabs, borders |
| `surface0` | `#ccd0da` | **`#dad8ce`** | `base-150` (`ui-2`) | Separators, scrollbars |
| `surface1` | `#bcc0cc` | **`#cecdc3`** | `base-200` (`ui-3`) | Text input background |
| `surface2` | `#acb0be` | **`#b7b5ac`** | `base-300` (`tx-3`) | Selection background base |
| `overlay0` | `#9ca0b0` | **`#9f9d96`** | `base-500` | Line numbers, gutter icons |
| `overlay1` | `#8c8fa1` | **`#878580`** | `base-500` | Code comments |
| `overlay2` | `#7c7f93` | **`#6f6e69`** | `base-600` (`tx-2`) | Secondary labels |
| `subtext0` | `#6c6f85` | **`#575653`** | `base-700` | Secondary UI text |
| `subtext1` | `#5c5f77` | **`#403e3c`** | `base-800` | Secondary dark UI text |
| `text` | `#4c4f69` | **`#100f0f`** | `black` (`tx`) | Primary typography (deep ink) |

## Quick Installation

1. Build or re-package the plugin:
   ```bash
   ./build-plugin.sh
   ```
2. In your JetBrains IDE:
   - Open **Settings** (or **Preferences** on macOS)
   - Navigate to **Plugins**
   - Click the ⚙️ **Gear icon** at the top right and select **Install Plugin from Disk...**
   - Choose `dist/Catppuccin-Latte-Warm.jar`
   - Restart the IDE if prompted.
3. Activate the theme:
   - **UI Theme**: **Settings → Appearance & Behavior → Appearance → Theme** → Select **Catppuccin Latte Warm**
   - **Editor Syntax**: **Settings → Editor → Color Scheme** → Select **Catppuccin Latte Warm** (or non-italics variant)

## Customizing Colors

Colors are configured in `palette.json`. You can modify any hex values and regenerate the theme templates using:
```bash
./build-plugin.sh
```
