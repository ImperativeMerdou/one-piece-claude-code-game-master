## One Piece HUD / Output Format Override

For the One Piece campaign, REPLACE the standard D&D dashboard from `output-format.md` with this layout. Bounty is the headline status. Berries (฿) instead of GP. Haki tracker instead of spell slots. "What's your move, Captain?" instead of bracket options.

This module overrides the standard scene template when the active campaign is One Piece.

---

## Scene Header — Standard Format

```
═══════════ ⚓ MERDOU PIRATES · DAY 11 · MORNING ═══════════
  ▸ TESSARA PORT, Route Three — Island 3 of the gauntlet
  ▸ The Golgatha · Hull ████████ 100%  · Crew Morale ████████
  ▸ MERDOU · Lvl 4 · Bounty ฿0 (no bounty issued yet)  · Haki: Armament▾ Observation▽ Conqueror▽
  ▸ Active arc: TESSARA — sign-ups open today, decision pending
═══════════════════════════════════════════════════════════
```

**Important about the bounty + epithet lines:** Do NOT show a bounty figure or an epithet that the world has not actually filed. Currently Merdo's bounty is ฿0 and he has NO earned epithet. When the world files (after a public arc), THEN update the HUD. Do not pre-invent. Per `feedback_no_ai_slop_names.md`: epithets must come from the most-witnessed thing the character did, named by the world (often a misinterpretation), not by us.

Notes on each line:
- **Day / Time-of-day** in header (warm sailor pacing, not video-game stat).
- **Location line** with route context. ("Worst Route — Island 3 of the gauntlet" reminds why the difficulty is up.)
- **Ship line** — hull + morale (the captain's two ship-stats). Not crew HP.
- **Bounty line** — bounty FIRST, level small after. Bounty IS identity in One Piece. ฿ symbol.
- **Haki tracker** — three icons:
  - `▴` = active / available
  - `▾` = unreliable / flickering
  - `▽` = dormant
- **Active arc + clock** — what's happening this island, what's the timer.

---

## Combat Header — Combat Format

```
═══════════ ⚔ COMBAT · TESSARA COLOSSEUM · ROUND 1 ════════
  Crowd: ROARING (full house, ~8000)
  ▸ MERDOU vs EZRAD "LAST BOTTLE"
  ▸ Merdo: standing, gauntlets on, Danzai sheathed across the back
  ▸ Ezrad: 47, drunk, smiling, two cleavers loose-grip
═══════════════════════════════════════════════════════════
```

Notes:
- **Crowd state** — quiet / murmuring / cheering / roaring / silent. Crowd is a combatant in One Piece.
- **Fighter status as PROSE,** not HP bars. "Merdo: standing, breathing hard, blood on his teeth, grin." NOT "HP: 45/72."
- **DM tracks numbers internally** but never displays them in the prose-facing HUD. (Per anti-rule #2: no D&D math in narration.)
- Use `▸` arrows for clean indent.

---

## "What's Your Move?" — Replaces Bracket Options

Instead of `[A]ttack [M]ove [C]ast spell`:

```
═══════════════════════════════════════════════════════════
  What's your move, Captain?
═══════════════════════════════════════════════════════════
```

Then a SHORT freeform line — 2-3 sentences MAX — that surfaces what's pressing. Often this is enough on its own. Examples:

```
Ezrad's already moving. The crowd is screaming. Volo is
shouting something obscene from the front row. Sumi has
climbed onto the railing.

What's your move, Captain?
```

```
The merchant council member is still smiling. The wine
glass in his hand hasn't moved. The Den Den Mushi on his
table just rang twice and stopped.

What's your move, Captain?
```

When the scene is genuinely paused (a quiet moment), THEN you can offer 3-4 captain-language options:

```
The crew is quiet. The Golgatha rocks under the dock.
Vesper is watching you over the rim of her medical mug.

  ▸ Sit with Vesper. Whatever she's not saying.
  ▸ Walk to the prow. Mornings alone, the crew knows.
  ▸ Find Sumi — she's been quiet for twenty minutes
    and that's unusual.
  ▸ Find Nox — he was asking about something.
  ▸ Or whatever you want, Captain.
```

Always include the freeform option. Never restrict the player to a list.

---

## Status / Damage / Healing — Anti-D&D-Math

When something happens to Merdo, NARRATE it. Don't display HP changes. Examples:

WRONG:
```
You take 8 damage. HP: 64/72.
```

RIGHT:
```
The Marine's gauntlet caught Merdo across the jaw.
The taste of iron bloomed in his mouth — the user knows
this taste. The crowd inhaled.
```

WRONG:
```
You heal 12 HP. HP: 72/72.
```

RIGHT:
```
Vesper's claws were already on his ribs. "STOP MOVING.
STOP. MOVING." She bit his shoulder for emphasis. He
stopped moving. The pain ebbed.
```

The DM tracks numbers internally for consistency. The player feels the damage, doesn't read it.

---

## Crew Status — Show Through Behavior

If the user asks "how's the crew?", show through behavior, not stats:

```
  ▸ ASHREN — on the high mast. Heel plates clicking
    once a minute. Awake.
  ▸ MELAINA — galley. Slamming pots. (She's worried
    about something. She won't say what.)
  ▸ VESPER — medical bay, sorting bandages, muttering
    about colosseum injury rates.
  ▸ SABLE — somewhere. (She left at midnight. Hasn't
    come back. Sumi says don't worry.)
  ▸ VOLO — prow. Has been silently watching the
    Marine ships for an hour. Fins folded.
  ▸ SUMI — on the deck, eating a pastry the size of
    her face, drawing what might be a battle plan
    or might be a self-portrait.
  ▸ NOX — trying to teach Mako a card game with
    rules he's making up as he goes.
  ▸ KARA — at the galley with Melaina. Humming.
```

This IS the status. Numbers go to the DM-internal layer.

---

## Bounty Updates Inline

When a bounty changes, surface it visibly:

```
  ▸ MERDOU · Lvl 4 · Bounty ฿0  →  ฿[earned amount]
                                    (filed after [witnessed event])
```

Pair with a News Coo cut or an anime-forum reaction. THE NUMBER IS NOT INVENTED HERE — it follows from the public event the world saw. Rookie first bounties in Paradise typically run 30M-60M for major events. Reference frame: pre-Alabasta Luffy was 30M; post-Alabasta jumped to 100M.

---

## End-of-Scene Footer

```
═══════════════════════════════════════════════════════════
  /dm save  ·  /dm character  ·  /dm overview  ·  /help
═══════════════════════════════════════════════════════════
```

(Same as before. Player tools always available.)

---

## What NEVER to put in the HUD

- HP bars (per anti-D&D rule)
- Spell slots (no D&D casters in One Piece)
- AC numbers
- "Conditions: Normal / Wounded / Critical" — narrate it instead
- "Initiative" or "Round 3 of 5"
- XP bars in scene headers (XP is DM-internal until level-up)
- Loot boxes for routine items (only the genuinely notable; show via crew dialogue)

---

## Activation

This module is active when `campaign-overview.json` has `narrator_style: shonen-one-piece`. The DM uses this header layout INSTEAD OF the one in `output-format.md`. All other rules from `output-format.md` (Unicode indicators, dialogue boxes when needed, etc.) remain available as fallbacks for non-One-Piece scenes.
