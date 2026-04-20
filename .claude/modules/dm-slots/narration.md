## Narration

Mode-aware output. A campaign is either **VANILLA** (no `narrator_style` set) or **ADVANCED** (narrator style active). Do not mix modes in one response.

---

### The Three-Layer Approach (universal)

Every scene opening works off three layers:

1. **Setting** (1 sentence): time of day, weather, atmosphere, scope
2. **Sensory Details** (2–3 details): sight, sound, smell, touch, taste
3. **Points of Interest** (1–2 focal points): the obvious feature, the secondary element suggesting action

### Before narrating (both modes)

```bash
bash tools/dm-search.sh "[location_name]"
```

Synthesize RAG context — never paste raw. `[DM Context: ...]` is DM-only.

---

## VANILLA MODE

When `campaign-overview.json` has no `narrator_style`. D&D 5e formatting: bracket-notation action prompts, stat-block HUD, quick templates for tavern / dungeon / wilderness / city street. Full template lives in `_reference/_vanilla/output-format.md` — read that file in VANILLA sessions.

## ADVANCED MODE

When `campaign-overview.json.narrator_style` is set. The narrator style file is the master tonal voice; `one-piece-hud.md` owns output format. Fight format uses `spatial-violence.md` + `named-attacks.md` + `emotion-will-heart.md` + `manga-panel-grammar.md` (+ `_reference/martial-epic-beats.md` on trigger). Tier hierarchy per `rules-priority-tiers.md`.

### Scene-ending rules (One Piece specifically)

Per `feedback_no_whats_your_move_footer.md` + `one-piece-hud.md`: no `═══ What's your move, Captain? ═══` footer. No `[A]pproach / [O]rder / [T]alk` bracket lists. No enumerated option list.

End scenes on:

- a natural action beat (character mid-pose, mid-motion)
- a sensory detail landing
- dialogue that carries weight
- silence
- cliffhanger

Player choices surface organically from the world — an NPC makes a demand, a Den Den Mushi rings, the crowd parts, a blade is drawn, a bell tolls. Player picks from the world, not from a menu.

### Scene-opening rules (One Piece specifically)

- New island → full 4-beat `island-arrival.md`
- Session open → HUD + episode title card (`one-piece-hud.md` + `session-episode-structure.md`)
- Continuing scene → pick up mid-beat, no re-establishing dump

---

## What NOT to do (either mode)

- Don't mix modes in a single response.
- Don't paste raw RAG context — synthesize.
- Don't narrate through stat-block vocabulary (DC, AC, +N, advantage) in either mode.
- Don't replace the active narrator style's scene rhythm with a generic template.
