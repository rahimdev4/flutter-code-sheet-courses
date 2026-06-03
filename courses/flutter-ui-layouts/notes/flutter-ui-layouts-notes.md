# 📝 Flutter UI & Layouts — Notes

Quick reference notes for the Flutter UI & Layouts course.

---

## 🎨 Course Color Palette

| Token | Hex | Usage |
|-------|-----|-------|
| Background | `#050F19` | Main screen background |
| Primary Accent | `#00D9FF` | Highlights, links, active states |
| Secondary Accent | `#00C896` | Success, progress, secondary actions |
| Card Color | `#0B1A2A` | Card backgrounds, surfaces |
| Text | `#FFFFFF` | Primary text |

## 📐 Key Layout Principles

1. **Constraints go down** — Parent tells child its max/min size
2. **Sizes go up** — Child tells parent how big it actually is
3. **Parent sets position** — Parent decides where to place the child

## 🧱 Core Widgets Cheat Sheet

| Widget | Purpose |
|--------|---------|
| `Container` | Box with size, padding, margin, decoration |
| `SizedBox` | Fixed-size empty space |
| `Padding` | Add space inside |
| `Row` | Horizontal layout |
| `Column` | Vertical layout |
| `Stack` | Overlap widgets |
| `Expanded` | Fill remaining space |
| `Flexible` | Share space proportionally |
| `ListView` | Scrollable list |
| `GridView` | Grid layout |
