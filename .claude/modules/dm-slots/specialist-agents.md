## Specialist Agents (One Piece campaign — active)

**PROACTIVELY spawn these when their triggers fire.** Agents run invisibly — the player sees only results, not process.

| Agent | Use for | Trigger |
|-------|---------|---------|
| `npc-builder` | Enhance NPC depth (backstory, motivations, quirks, relationships) | Meeting a new named NPC who needs interior, OR an existing NPC surfaced into focus |
| `world-builder` | Expand locations, sub-regions, faction territories | Arriving at a new island / port / region that needs structure |
| `extractor-npcs` | Pull NPCs out of imported source documents (via RAG) | New document imported via `/import` |
| `extractor-locations` | Pull locations out of imported source documents | New document imported |
| `extractor-items` | Pull items / props / treasures out of imported source documents | New document imported |
| `extractor-plots` | Pull plot hooks / quests / story threads out of imported source documents | New document imported |

---

## D&D-specialist agents — DISABLED for this campaign

The original DM system shipped with 7 D&D-flavored specialist agents. They've been moved to `.claude/agents/_disabled-dnd/` for this One Piece campaign because the Merdou Pirates saga doesn't use D&D 5e mechanics as player-facing fiction:

- ~~`monster-manual`~~ — D&D 5e API monster stats. Replaced by the shonen combat stack: `spatial-violence.md` + `martial-epic-beats.md` + `named-attacks.md` + `emotion-will-heart.md` + `legendary-fights.md` + `villain-kit.md`.
- ~~`spell-caster`~~ — D&D 5e spells. Not applicable; One Piece has Devil Fruits + Haki + Rokushiki + Fish-Man Karate instead (see `one_piece_power_law.md` memory + `named-attacks.md`).
- ~~`rules-master`~~ — D&D 5e rule clarifications. Replaced by `shonen-one-piece` narrator + the canon-* reference modules + `canon-fidelity-audit.md`.
- ~~`gear-master`~~ — D&D 5e equipment. Replaced by One Piece in-world items logic (kanabo, nodachi, flintlocks, Devil Fruits as items, etc.).
- ~~`loot-dropper`~~ — D&D 5e loot tables. Replaced by in-world treasure logic (berries, Devil Fruits are priceless, crew shares, etc.).
- ~~`dungeon-architect`~~ — D&D 5e dungeon rooms. Replaced by One Piece island/ship/fortress writing (see `spatial-violence.md` + `arc-anatomy.md`).
- ~~`create-character`~~ — D&D 5e character creation. Replaced by campaign-specific character design per `CAMPAIGN_BIBLE.md` + the design-law memory files.

**DO NOT spawn any of these.** They don't exist in the agent registry anymore for this campaign. If combat / spell / rules / equipment / loot / dungeon / character-creation logic is needed, route through the shonen-one-piece module stack listed above.

---

## When to spawn `npc-builder`

Trigger: a named NPC enters focus in a scene (a port bartender with a name, a colosseum fighter with a name, a Marine officer with a name). The DM has 1-2 basic attributes but the character needs DEPTH — backstory, motivations, 3-5 sentences of interior, relationship threads, one wound, one dream.

Invocation pattern:
- Read existing NPC record via `dm-npc.sh`
- Launch `npc-builder` agent with NPC name + current context + what's missing
- Agent returns enhanced entry
- Save via `dm-npc.sh update`

Apply the design-law memory files to agent output (silhouette anchor + body extreme + face hook + contradiction + comedy engine + dream + wound + laugh pattern). The agent knows to follow these, but verify.

---

## When to spawn `world-builder`

Trigger: the party arrives somewhere new — an island, a port quarter, a fortress, a sub-region — and the location needs structure (named sub-areas, factions, local culture, 2-3 sensory anchors per sub-area, 1-2 local NPCs, a hook or two).

Invocation pattern:
- Read existing location record via `dm-location.sh`
- Launch `world-builder` agent with location + context + desired depth
- Agent returns structured expansion (sub-locations, connections, NPCs, facts)
- Save each via appropriate `dm-*.sh` tool

Apply One Piece geography / faction rules (see canon-geography.md, canon-factions.md) to keep world-builder output in-canon-shape.

---

## When to spawn extractors

Triggered only by `/import` command after a source document is dropped in `source-material/`. The extractors run in parallel (NPCs / locations / items / plots) and write to `extracted/*.json` for DM review + merge.

Extractors are not run during normal play.

---

## Summary

- **Active agents for this campaign: 6** (npc-builder, world-builder, 4 extractors)
- **D&D specialist agents: DISABLED, do NOT spawn** — their logic is handled by the shonen-one-piece module stack
- **Agents run invisibly** — the player sees only narrative results, not agent invocation or tool calls
