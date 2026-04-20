## Hidden Blocks — The World Simulates Offscreen

**Adapted from Celia's Hidden Block trio + Nemo's Cutaway / Parallel Storylines.** While Merdo is at the prow, the world is MOVING — Doflamingo plans, Marines file, the Straw Hats fight Crocodile, the Revolutionary Army stirs, the merchant council in Tessara debates. This module makes that simulation REAL instead of "it happens when the DM remembers."

---

## Concept

At the END of every response, the DM writes a HIDDEN BLOCK that doesn't display to the player but informs all future scenes. There are FOUR sub-blocks. Use 1-3 per response (not all 4 every time — too much).

The hidden block is in HTML comment form so it doesn't render but persists in chat history:

```html
<!-- HIDDEN_BLOCK
[OFFSCREEN]: brief offscreen activity tracking
[PARALLEL]: parallel arcs progressing
[PLANS]: NPC schemes / hidden intent
[KNOWS]: per-character knowledge log entries
HIDDEN_BLOCK -->
```

The DM writes this. The DM reads from it next turn. The player never sees it. The world is now ALIVE.

---

## Sub-block 1: [OFFSCREEN]

What's happening RIGHT NOW elsewhere in the world that's relevant to the campaign. 1-3 short lines max. Examples:

```html
[OFFSCREEN]:
- Marine HQ Marineford: Sengoku reading the Tessara dispatch (Hudore benched, rookie crew visible). Internal debate begins.
- Dressrosa: Doflamingo's daily briefing includes Yann's hourly update from Tessara colosseum. Doflamingo is intrigued by the Lunarian sighting.
- Drum Island: Straw Hats are mid-arc, climbing the mountain. Chopper introduction inevitable next session.
```

These don't need to fire as scene cuts. They're BACKGROUND PRESSURE the DM should remember when the player asks "what does the world look like?"

## Sub-block 2: [PARALLEL]

Active parallel arcs the player isn't currently in. Track their state-of-progress so they advance over time. Examples:

```html
[PARALLEL]:
- Volo's aquatic bracket: Round 1 vs Opal Tane scheduled tomorrow morning if Volo signs in.
- Rook's Marine intelligence file: ESCALATING — a Marine intelligence officer in Loguetown will request his location next session unless something changes.
- Donquixote inventory delivery: Yann is scheduled to depart Tessara within 4 days; if he's not stopped, the two Devil Fruits in his hold reach Doflamingo.
- Kara's mother (Mira Odinu) at Goroa: alive, working her village, has not received news yet. Will get her first letter from Kara in 2 weeks.
```

These ADVANCE every session whether the player engages with them or not. That's the point.

## Sub-block 3: [PLANS]

What named NPCs are SCHEMING right now. Per character. Examples:

```html
[PLANS]:
- Yann Merlis: ranking acquisition targets. Top: Kara. Second: Lunarian (unrealistic). Third: tournament fighters (Parseval is on the shortlist).
- Hudore: monitoring the tournament for crew weakness signs; will personally escort Merdo to the bracket meeting if Merdo enters.
- Sumi: if Merdo doesn't accept her by midday, plans to stow away and prove herself by sneaking into a tournament fight.
- Nox: drafting a fake bounty poster of himself to leave at the bookmaker's booth ("PRESS RELEASE PRELOAD").
```

The DM uses these to fire NPC actions naturally. NPCs don't wait for the player — they have plans, and they execute them.

## Sub-block 4: [KNOWS]

Per-character knowledge log. What does each named NPC actually KNOW vs. what does the world know? Anti-meta-knowledge. Examples:

```html
[KNOWS]:
- Sable: knows the gold signet ring = Donquixote network (CP-0 alumni intel). Has not told Merdo yet.
- Ashren: knows there is at least one other Lunarian rumored alive in the South Blue (research thread). Has not shared.
- Rook: knows his sealed file activated last week; knows the Marine officer chasing him by name (Vice Admiral Onigumo, off-screen). Has not told the crew the name.
- Brenne (the Twenty): has been keeping the Ship Log for 12 years across 3 ships. Knows things from the OTHER two ships nobody asks about.
- Sumi: does NOT know what "Nika" actually means in old myth. Has heard Joy Boy mentioned twice, dismissed it as bedtime story.
```

When the player engages a character, only surface what THAT character actually KNOWS. The world doesn't speak through every mouth.

---

## When to write hidden blocks

EVERY response that:
- Resolves a scene
- Ends a chapter
- Ends a session
- Introduces a new NPC
- Contains a plant (chekhov-gun-rack.md)

NOT every micro-turn. Use judgment — 1 hidden block every 2-4 responses is the rhythm.

---

## When to read hidden blocks

At session start (auto-loaded via Read tool). At any point the DM is unsure what an NPC would do or know.

The DM treats `[KNOWS]` as canon — never have an NPC reveal info they don't have logged.

---

## Format rules

- HTML comments (`<!-- ... -->`) so they don't render in markdown.
- Keep each entry to 1-2 short lines max.
- Update existing entries instead of duplicating. If Sengoku is "reading the dispatch" this turn and "writing a response" next turn, replace, don't append.
- Hard cap: 8 entries per sub-block. If it overflows, the DM consolidates or fires/closes some.
