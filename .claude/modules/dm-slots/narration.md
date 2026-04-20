## Narration

Mode-aware output. A campaign is either **VANILLA** (no `narrator_style` set) or **ADVANCED** (narrator style active). Don't mix modes in one response.

---

### The Three-Layer Approach (universal)

Every scene opening works off three layers:

1. **Setting** (1 sentence): time of day, weather, atmosphere, scope
2. **Sensory Details** (2–3 details): sight, sound, smell, touch, taste
3. **Points of Interest** (1–2 focal points): the obvious feature, the secondary element suggesting action

Before narrating (both modes):
```bash
bash tools/dm-search.sh "[location_name]"
```

Synthesize RAG context — never paste raw. `[DM Context: ...]` is DM-only.

---

## VANILLA MODE

No `narrator_style`. D&D 5e formatting: bracket-notation action prompts, stat-block HUD, tavern/dungeon/wilderness/city templates. Full template in `_reference/_vanilla/output-format.md` — read in VANILLA sessions.

## ADVANCED MODE

`narrator_style` is set. The narrator style file is the master tonal voice; `one-piece-hud.md` owns output format. Fights use `spatial-violence.md` + `named-attacks.md` + `emotion-will-heart.md` + `manga-panel-grammar.md` (+ `_reference/martial-epic-beats.md` on trigger). Tier hierarchy per `rules-priority-tiers.md`.

### Scene-ending (One Piece)

Per `feedback_no_whats_your_move_footer.md` + `one-piece-hud.md`: no `═══ What's your move, Captain? ═══` footer. No `[A]pproach / [O]rder / [T]alk` bracket lists. No enumerated option list.

End on:
- A natural action beat (mid-pose, mid-motion)
- A sensory detail landing
- Dialogue that carries weight
- Silence
- Cliffhanger

Player choices surface organically — an NPC makes a demand, a Den Den Mushi rings, the crowd parts, a blade is drawn, a bell tolls. From the world, not a menu.

### Scene-opening (One Piece)

- New island → full 4-beat `island-arrival.md`
- Session open → HUD + episode title card (`one-piece-hud.md` + `session-episode-structure.md`)
- Continuing scene → pick up mid-beat, no re-establishing dump

---

## NOT to do (either mode)

- Don't mix modes in a single response.
- Don't paste raw RAG context — synthesize.
- Don't narrate through stat-block vocabulary (DC, AC, +N, advantage) in either mode.
- Don't replace the active narrator style's rhythm with a generic template.
