# Disabled — D&D 5e–only agents

These agents target the D&D 5e API (`https://www.dnd5eapi.co`). They are useless for the One Piece campaign that runs in this project and were auto-firing in the wrong contexts.

The `_disabled-dnd/` folder name starts with an underscore so the Claude Code agent loader skips it (it scans for top-level `*.md` definitions in `.claude/agents/`).

If you want to play a vanilla D&D 5e campaign in this same checkout later, move the relevant files back up one level.

## Why each is disabled here

| Agent | Reason |
|---|---|
| `create-character.md` | Pre-built D&D character wizard. One Piece chargen uses `/new-game` flow + the Crew Master research, not D&D race/class menus. |
| `dungeon-architect.md` | Generates D&D dungeon room layouts. Islands aren't dungeons. |
| `gear-master.md` | Hits D&D 5e equipment API. Merdo's gear is custom (Danzai, Enbu, gauntlets). |
| `loot-dropper.md` | D&D 5e loot tables. Doesn't apply to berries/treasure/Devil Fruits. |
| `monster-manual.md` | D&D 5e monsters API. Sea Kings, Devil Fruit users, and Marines aren't in that API. |
| `rules-master.md` | D&D 5e rules API. Campaign uses adapted mechanics + custom Haki/Devil Fruit progression. |
| `spell-caster.md` | D&D 5e spells API. Powers come from Devil Fruits, Haki, Rokushiki, Fish-Man Karate. |

## Still active (genre-neutral)

- `extractor-items.md` / `extractor-locations.md` / `extractor-npcs.md` / `extractor-plots.md` — extract from any source material
- `npc-builder.md` — narrative enhancer that operates on `npcs.json` regardless of system
- `world-builder.md` — generic worldbuilder
