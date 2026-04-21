# Narration — Mode + Opening + Ending

A campaign is either **VANILLA** (no `narrator_style`) or **ADVANCED** (narrator style active). Don't mix modes in one response. `_preamble.md` owns the mode gate.

---

## Three-layer opening (both modes)

1. **Setting** (1 sentence) — time of day, weather, atmosphere, scope
2. **Sensory details** (2–3) — sight, sound, smell, touch, taste
3. **Points of interest** (1–2) — the obvious feature, the secondary element suggesting action

Before narrating a location: `bash tools/dm-search.sh "[location_name]"` — synthesize RAG context. Never paste raw. `[DM Context: ...]` is DM-only, never player-facing.

---

## ADVANCED mode (One Piece)

The active narrator style (`shonen-one-piece.md`) is master tonal voice. `one-piece-hud.md` owns output format. Fights use `fight.md`. Tier map per `rules-priority-tiers.md`.

### Scene-opening

- **New island** → full 4-beat `_reference/island-arrival.md`
- **Session open** → HUD + episode title card (`one-piece-hud.md` + `_reference/session-episode-structure.md`)
- **Continuing scene** → pick up mid-beat, no re-establishing dump

### Scene-ending

No `═══ What's your move, Captain? ═══` footer. No `[A]ttack [M]ove [C]ast` bracket lists. No enumerated option menu by default.

End on:
- A natural action beat (mid-pose, mid-motion)
- A sensory detail landing
- Dialogue carrying weight
- Silence
- Cliffhanger

Player choices surface organically — an NPC makes a demand, a Den Den Mushi rings, the crowd parts, a blade is drawn, a bell tolls. From the world, not a menu. When the scene genuinely pauses (a quiet moment between crises), `one-piece-hud.md` permits 3–4 diegetic options + explicit freeform line; never "Captain?" as a prompt.

---

## VANILLA mode (D&D 5e)

No `narrator_style`. Bracket-notation action prompts, stat-block HUD, tavern/dungeon/wilderness/city templates. Full template in `_reference/_vanilla/output-format.md`.

---

## Never

- Don't mix modes in one response.
- Don't paste raw RAG context — synthesize.
- Don't narrate through stat-block vocabulary (DC, AC, +N, advantage) in either mode.
- Don't replace the active narrator style's rhythm with a generic template.
