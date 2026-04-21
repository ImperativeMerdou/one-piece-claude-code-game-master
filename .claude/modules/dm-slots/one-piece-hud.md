# One Piece HUD — Output Format

One Piece campaign output format. Bounty is the headline status. Berries (฿) replace GP. Haki tracker replaces spell slots. No boxed prompt-line footer. VANILLA D&D template lives in `_reference/_vanilla/output-format.md`.

---

## Scene header — standard

```
═══════════ ⚓ MERDO PIRATES · DAY 11 · MORNING ═══════════
  ▸ TESSARA PORT, Route Three — Island 3 of the gauntlet
  ▸ The Golgatha · Hull ████████ 100%  · Crew Morale ████████
  ▸ MERDO · Bounty ฿0 (no bounty issued yet)  · Haki: Armament▾ Observation▽ Conqueror▽
  ▸ Active arc: TESSARA — sign-ups open today, decision pending
═══════════════════════════════════════════════════════════
```

- **Day / Time-of-day** — warm sailor pacing.
- **Location** — route context on Route line.
- **Ship** — hull + morale. Not crew HP.
- **Bounty** — bounty FIRST, identity in One Piece. ฿ symbol. Do NOT pre-invent bounties or earned epithets — they come from the world after a public event.
- **Haki tracker** — `▴` active / `▾` unreliable / `▽` dormant.
- **Active arc** — what's happening this island, what's the timer.

Fire HUD at scene transitions and session starts, not every response.

---

## Combat header

```
═══════════ ⚔ COMBAT · TESSARA COLOSSEUM · ROUND 1 ════════
  Crowd: ROARING (full house, ~8000) · With Merdo: drifting
  ▸ MERDO vs EZRAD "LAST BOTTLE"
  ▸ Merdo: standing, gauntlets on, Judgment sheathed
  ▸ Ezrad: 47, drunk, smiling, two cleavers loose-grip
═══════════════════════════════════════════════════════════
```

- **Crowd state** — quiet / murmuring / cheering / roaring / silent. Crowd is a combatant.
- **Crowd alignment** — "with Merdo" / "neutral" / "against" / "drifting" — a narrative gauge the player can move via dream declarations, named attacks, comedy beats in front of witnesses. DM tracks qualitatively. No numbers.
- **Fighter status as PROSE** — "standing, breathing hard, blood on his teeth, grin." NOT HP numbers.
- DM tracks numbers internally; never displays them in prose-facing HUD.

---

## No footer

Per `narration.md` + `length-governor.md`: the scene ends on its natural beat. Do NOT append `═══ What's your move? ═══` or `[A]ttack [M]ove` brackets. The final sentence IS the hook.

```
Ezrad's already moving. The crowd is screaming. Volo is
shouting something obscene from the front row. Sumi has
climbed onto the railing.
```

Scene leaves the decision live. Player picks it up.

### When to offer diegetic options

When the scene genuinely pauses (a quiet moment between crises), offer 3–4 visible paths + an explicit freeform:

```
The crew is quiet. The Golgatha rocks under the dock.
Vesper is watching Merdo over the rim of her medical mug.

  ▸ Sit with Vesper. Whatever she's not saying.
  ▸ Walk to the prow. Mornings alone, the crew knows.
  ▸ Find Sumi — she's been quiet for twenty minutes.
  ▸ Find Nox — he was asking about something.
  ▸ Or whatever Merdo does instead.
```

Always include the freeform option. Never restrict. Never address the player as "Captain" in a menu — the crew does not default to that, and neither does the UI.

---

## Damage and healing — no D&D math

Narrate, don't display HP.

WRONG: *"You take 8 damage. HP: 64/72."*
RIGHT: *"The Marine's gauntlet caught Merdo across the jaw. The taste of iron bloomed in his mouth. The crowd inhaled."*

Vesper bites, scolds, and heals through prose — never through HP numbers.

---

## Crew status — show through behavior

"How's the crew?" → show behavior, not stats:

```
  ▸ ASHREN — on the high mast. Heel plates clicking once a minute. Awake.
  ▸ MELAINA — galley. Slamming pots. Worried about something, won't say what.
  ▸ VESPER — medbay, sorting bandages, muttering about colosseum injury rates.
  ▸ SABLE — somewhere. Left at midnight. Hasn't come back. Sumi says don't worry.
  ▸ VOLO — prow. Silently watching the Marine ships for an hour. Fins folded.
  ▸ SUMI — deck, eating a pastry the size of her face, drawing a plan or a self-portrait.
  ▸ NOX — teaching Mako a card game with rules he's inventing.
  ▸ KARA — galley with Melaina. Humming.
```

This IS the status.

---

## Bounty updates inline

When a bounty changes, surface it visibly, paired with a News Coo cut or reaction beat:

```
  ▸ MERDO · Bounty ฿0  →  ฿[earned amount]
                          (filed after [witnessed event])
```

The number follows from the public event. Rookie Paradise bounties run 30M–60M for major events. Pre-Alabasta Luffy: 30M. Post-Alabasta: 100M.

---

## NEVER in the HUD

- HP bars
- Spell slots
- AC numbers
- "Conditions: Normal / Wounded / Critical" — narrate it
- "Initiative" / "Round 3 of 5"
- XP bars (DM-internal)
- Loot boxes for routine items

---

## Active when

`campaign-overview.json.narrator_style = shonen-one-piece`.
