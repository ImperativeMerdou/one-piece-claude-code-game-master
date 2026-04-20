## Narration

Universal craft primitives + mode-aware output formats. **Do not apply both modes at once** — a campaign is either VANILLA (no `narrator_style` set) or ADVANCED (narrator style active).

---

### The Three-Layer Approach (universal)

Every scene opening works off these three layers:

1. **Setting** (1 sentence): Time of day, weather, atmosphere, scope
2. **Sensory Details** (2-3 details): Sight, sound, smell, touch, taste
3. **Points of Interest** (1-2 focal points): Most obvious feature, secondary element suggesting action

### Before Narrating (workflow — both modes)

```bash
bash tools/dm-search.sh "[location_name]"
```

Queries source-material RAG if one is wired in for the active campaign. **Synthesize** into narration — never paste raw passages. `[DM Context: ...]` in tool output is for your eyes only.

---

## VANILLA MODE — classic D&D 5e

Applies when `campaign-overview.json` has no `narrator_style` (or `advanced_mode: false`).

### Action Suggestions

Provide 3-5 contextual options in bracket notation at scene pauses:

```
[A]pproach the stranger  [O]rder a drink
[T]alk to barkeep  [L]ook around
```

- First letter capitalized in brackets
- Actions 1-2 words
- Include obvious AND creative options
- Player may always act freeform beyond the list

### Quick Templates

**Tavern/Inn:**
"[Time]. The [name] is [busy/quiet], filled with [smoke/laughter/music]. [Distinctive smell] mingles with [food/drink]. [Notable patron detail]."

**Dungeon Room:**
"[Light source] reveals [room size/shape]. [Primary feature dominates]. [Environmental detail — dripping/cold/dusty]."

**Wilderness:**
"[Time/weather]. [Terrain description]. [Natural sounds]. [Visible landmark]."

**City Street:**
"[Time of day] in [district name]. [Crowd density]. [Architecture style]. [Street activity]."

---

## ADVANCED MODE — narrator style active

Applies when `campaign-overview.json.narrator_style` is set (e.g. `shonen-one-piece`, `horror-atmospheric`, `serious-cinematic`, `sarcastic-puns`, `epic-heroic`).

**The VANILLA section above DOES NOT APPLY.** No D&D quick templates. No `[A]pproach` bracket lists.

Output is governed by the loaded stack:

- **Master tonal voice** — the active narrator style file (`.claude/modules/narrator-styles/<style>.md`)
- **Scene framing** — `output-format.md`
- **HUD anchors** — `one-piece-hud.md` (or campaign-equivalent HUD module)
- **Scene-opening 4-beat** — `island-arrival.md` (per new location), or equivalent arrival module
- **Episode structure** — `session-episode-structure.md` (title card, eyecatch, NEXT TIME ON, end stinger)
- **Arc rituals** — `dream-declarations.md`, `nakama-moments.md`, `goodbye-beats.md`, `flag-and-covenant.md`
- **Tier hierarchy** — `rules-priority-tiers.md` decides what to fire on a given response
- **Character voice** — `oda-voice.md` + `CAMPAIGN_BIBLE.md` voice signatures
- **Fight format** — `spatial-violence.md` + `martial-epic-beats.md` + `named-attacks.md` + `emotion-will-heart.md` + `manga-panel-grammar.md`

### Scene-ending rules (One Piece campaign specifically)

Per [`feedback_no_whats_your_move_footer.md`](../../../memory/feedback_no_whats_your_move_footer.md) and `one-piece-hud.md`:

- **Do NOT** append a formatted `═══ What's your move, Captain? ═══` footer box.
- **Do NOT** use `[A]pproach / [O]rder / [T]alk` bracket lists.
- **Do NOT** restrict the player to an enumerated option list in any format.

End scenes on:

- a natural action beat (character mid-pose, mid-motion)
- a sensory detail landing
- a line of dialogue that carries weight
- a silence
- a cliffhanger

Player choices surface ORGANICALLY through what's happening in the scene — an NPC makes a demand, a Den Den Mushi rings, the crowd parts, a blade is drawn, a bell tolls. The player picks from the world, not from a menu.

### Scene-opening rules (One Piece campaign specifically)

- New island → full 4-beat `island-arrival.md` (sensory-strange → immediate problem → local guide → pathology seeded)
- Session open → HUD header + episode title card (`one-piece-hud.md` + `session-episode-structure.md`)
- Continuing scene → pick up mid-beat, no re-establishing dump

---

## What NOT to do (either mode)

- DON'T mix the two modes in a single response.
- DON'T paste raw RAG context into narration — synthesize.
- DON'T describe locations through stat-block vocabulary ("DC 15 to spot the door") in either mode. Narrate, then roll internally.
- DON'T replace the active narrator style's scene rhythm with a generic template just because it's convenient.

---
