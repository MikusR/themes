# Catppuccin Latte Warm for JetBrains

A customized, warm variant of the [Catppuccin Latte](https://github.com/catppuccin/jetbrains) theme for JetBrains IDEs (IntelliJ IDEA, WebStorm, PyCharm, CLion, GoLand, Android Studio, RustRover, etc.).

Original Catppuccin Latte uses cool blue/slate undertones ($R < G < B$). This theme shifts the background and neutral palette to warm ivory, cream, and parchment tones ($R > G > B$), offering a softer, warm paper-like coding experience while keeping Catppuccin's pastel syntax highlights.

## Palette Comparison

| Token | Original Cool Blue | Warm Latte (`mikusr`) | Role |
| :--- | :--- | :--- | :--- |
| `base` | `#eff1f5` (239, 241, 245) | **`#fbf5e6`** (251, 245, 230) | Editor & window background |
| `mantle` | `#e6e9ef` (230, 233, 239) | **`#f4eedf`** (244, 238, 223) | Tool windows, sidebars, panels |
| `crust` | `#dce0e8` (220, 224, 232) | **`#ebdcc9`** (235, 220, 201) | Status bar, inactive tabs, borders |
| `surface0` | `#ccd0da` (204, 208, 218) | **`#dfd5c2`** (223, 213, 194) | Separators, scrollbars |
| `surface1` | `#bcc0cc` (188, 192, 204) | **`#d1c5b0`** (209, 197, 176) | Text input background |
| `surface2` | `#acb0be` (172, 176, 190) | **`#c2b59e`** (194, 181, 158) | Selection background base |
| `overlay0` | `#9ca0b0` (156, 160, 176) | **`#b0a28b`** (176, 162, 139) | Line numbers, gutter icons |
| `overlay1` | `#8c8fa1` (140, 143, 161) | **`#9c8e77`** (156, 142, 119) | Code comments |
| `overlay2` | `#7c7f93` (124, 127, 147) | **`#887a64`** (136, 122, 100) | Secondary labels |
| `subtext0` | `#6c6f85` (108, 111, 133) | **`#746652`** (116, 102, 82) | Secondary UI text |
| `subtext1` | `#5c5f77` (92, 95, 119) | **`#615441`** (97, 84, 65) | Secondary dark UI text |
| `text` | `#4c4f69` (76, 79, 105) | **`#4a4035`** (74, 64, 53) | Primary typography (dark espresso) |

## Quick Installation

1. Run the build script to generate the plugin package:
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
whiskers --color-overrides palette.json templates/ui.theme.tera
whiskers --color-overrides palette.json templates/editor.tera
```
Or simply run `./build-plugin.sh` which automatically regenerates and re-packages the plugin.
