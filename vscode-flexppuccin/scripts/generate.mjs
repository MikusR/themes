// Generates the Flexppuccin VS Code themes by compiling Catppuccin Latte
// with the neutral colors from palette.json (Flexoki Light paper/ink tones).
import { readFileSync, writeFileSync } from "node:fs";
import { compile } from "@catppuccin/vscode";

const root = new URL("..", import.meta.url);
const palette = JSON.parse(readFileSync(new URL("palette.json", root), "utf8"));

const latte = Object.fromEntries(
  Object.entries(palette.latte).map(([name, hex]) => [name, `#${hex}`]),
);

const variants = [
  { file: "flexppuccin-color-theme.json", name: "Flexppuccin", italics: true },
  { file: "flexppuccin-no-italics-color-theme.json", name: "Flexppuccin (No Italics)", italics: false },
];

for (const { file, name, italics } of variants) {
  const theme = compile("latte", {
    colorOverrides: { latte },
    italicComments: italics,
    italicKeywords: italics,
  });
  theme.name = name;
  // Terminal grays come from Catppuccin's fixed ANSI palette, not colorOverrides.
  Object.assign(theme.colors, {
    "terminal.ansiBlack": latte.subtext1,
    "terminal.ansiBrightBlack": latte.subtext0,
    "terminal.ansiWhite": latte.surface2,
    "terminal.ansiBrightWhite": latte.surface1,
  });
  writeFileSync(new URL(`themes/${file}`, root), JSON.stringify(theme, null, 2) + "\n");
  console.log(`--> Wrote themes/${file}`);
}
