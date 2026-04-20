## Epistemic Mode — What the Reader Knows vs What Characters Know

**Adapted from Paramnesia's Epistemic Mode toggles.** Four modes, switchable per arc. Default is `alongside` — same as the player. But arcs can be richer when the mode shifts.

---

## The four modes

### 🔮 BEHIND
**The player learns AFTER characters do.** Trail of crumbs. Reader is one step behind, piecing it together.

Use for: mystery threads, infiltration arcs, "what happened in that room while we weren't there" beats.

How:
- Major events happen offscreen and are referenced obliquely.
- NPCs already know things; reader catches up by overhearing or by pieces dropped in dialogue.
- Don't explain. Show ripples; let the reader infer the splash.

Example: Sable disappears for a night, returns with a bandage and the gold signet ring on her finger. NEVER show what happened. Reader figures out across 2-3 sessions that she infiltrated Yann's ship.

### 🔮 ALONGSIDE
**Reader and characters discover at the same time.** The default. Shared discovery.

Use for: most exploration, most arcs, most port arrivals, most fights.

How: standard prose. Player and characters see and learn together.

### 🔮 AHEAD
**Reader knows MORE than characters.** Dramatic irony. The reader sees clues characters miss.

Use for: betrayal setups, villain plots-in-motion, the "we know the bomb is under the table" tension.

How:
- Show the villain's plan in `meanwhile.md` cuts before characters discover it.
- Plant clues in NPC behavior the reader catches but characters miss.
- The Doflamingo agent in the back of the colosseum, sipping tea, watching Kara — the reader sees this; Merdo doesn't yet.

Example: The reader sees Hudore in his cabin reading Merdo's intel file, taking notes. Two scenes later, Hudore meets Merdo. Hudore's small smile reads VERY differently to the reader than to Merdo.

### 🔮 DARK
**Beats are skipped. Nobody (reader or characters) knows what's missing.** Deliberate gaps.

Use for: trauma arcs, the silent panels at peak emotion, what-happened-in-that-cabin moments.

How:
- A scene CUTS at a critical moment. Next scene picks up later. The middle is gone.
- Reference the missing time only obliquely — through bandages, mood, debt, scar.
- Never fill in the gap. Let the absence be the meaning.

Example: Merdo enters Yann's cabin alone. Cut. Next scene: dawn, Merdo returning to the Golgatha, blood on his coat that isn't his, and Yann is gone from Tessara entirely. What happened? Nobody says. The reader makes peace with not knowing.

---

## Switching modes

The active mode lives in `campaign-overview.json` as `epistemic_mode` (default `alongside`). Can be set per arc:

```json
"epistemic_mode": "alongside"
```

Or per-scene (the DM declares mid-arc): "This scene is BEHIND mode — Sable knows; reader doesn't."

**Switch deliberately, not randomly.** Each mode does specific work; mixing within a single beat creates incoherence.

---

## Combinations across an arc

A well-shaped One Piece arc often runs:
- **Setup: ALONGSIDE** (reader and characters explore the new island)
- **Conflict reveal: AHEAD** (reader sees the villain's plot before characters do; tension grows)
- **Crisis: ALONGSIDE** (everyone knows the stakes now)
- **Climax: ALONGSIDE** (the fight itself)
- **Resolution callback: BEHIND** (the reader pieces together what was set up)
- **Trauma beat: DARK** (the moment that's never fully shown)

Don't do all four every arc. Pick 1-3 modes per arc and use them precisely.

---

## What this means for the DM

Default to ALONGSIDE. Switch only when an arc benefits.

When AHEAD: surface villain-side material in meanwhile cuts.
When BEHIND: hold back, let dialogue and ripple do the work, NEVER over-explain.
When DARK: cut the scene at the critical moment, never return to fill it in.

The player can request a mode for an arc ("I want this to be a mystery — go BEHIND on Sable's past for the next 3 sessions"). Honor it.
