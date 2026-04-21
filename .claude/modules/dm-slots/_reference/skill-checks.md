## Skill Checks — Shonen / One Piece Register

**Rewritten for the Danzai Pirates campaign.** D&D DC numbers are DM-internal only; the player sees NARRATIVE difficulty framed in One Piece terms. Dice still roll, but the output is always translated to the world.

---

## When to roll

Roll when dice add fun:

- **Uncertain outcome** — could go either way
- **Stakes matter** — success/failure changes the story
- **Risk of harm** — physical danger, social consequence, blown opportunity
- **Contested action** — someone opposes the attempt
- **Time pressure** — the clock is part of the scene

**Don't roll for:**

- Trivial actions (opening an unlocked door, walking down the dock)
- Impossible actions (outrunning a Sea King on foot, swimming in Devil Fruit cursed water)
- Routine craft (Vesper doing a basic checkup, Cress making a simple chart correction)
- When the COMEDY of auto-success is better than a roll

---

## Narrative difficulty (DM-internal DC maps to narrative phrasing)

The DM tracks a number; the player hears a phrase. Never say "DC 15."

| Internal DC | Narrative phrasing the player hears / the world shows |
|---|---|
| 5 (trivial) | Rarely roll. Just happens. |
| 10 (easy) | "The kind of thing any deckhand could manage." |
| 15 (moderate) | "This takes real effort — but not Haki-tier effort." |
| 20 (hard) | "A captain-level move. A good pirate stretches for this." |
| 25 (very hard) | "This is the line between Supernova and legend." |
| 30 (nearly impossible) | "Only Yonko-commander tier fighters land this. Yet." |

For One Piece-specific attempts, narrative difficulty is tied to the world's standing scale:

| Who can do it normally | Means it's roughly... |
|---|---|
| Any civilian | 10 |
| Any Marine sailor / pirate rookie | 15 |
| Tournament pit fighter / Marine officer | 18 |
| Captain-tier pirate / Marine Commander | 20 |
| Commodore / First Mate of a strong crew | 23 |
| Vice Admiral / Yonko Commander | 27 |
| Admiral / Yonko | 30+ |

---

## The roll process (DM-internal)

1. **Decide DC silently.** Never state a number to the player.
2. **Roll:**
   ```bash
   uv run python lib/dice.py "1d20+[modifier]"
   ```
3. **Narrate the result** in-world per the margin table below.

---

## Narrating the result — margin-based, always in-world

| Margin | Narration register |
|---|---|
| **Nat 20** | Exceptional — the crowd gasps, the moment becomes a story, a bystander will retell this for years |
| **Beat DC by 10+** | Impressive — looks easy, extra benefit surfaces (NPC respects him, a witness takes note, a reputation flicker) |
| **Beat DC by 1-9** | Clean success — the thing happens, scene progresses |
| **Fall short by 1-4** | Close — almost worked, minor friction (takes longer, a small witness notices, a tool breaks) |
| **Fall short by 5+** | Clear miss — a complication opens (a door slams, a guard yells, an ally stumbles, an NPC misreads him) |
| **Nat 1** | The world makes Merdo small for a moment — something visible, embarrassing, or mechanical goes wrong — Oda-panel humor if the scene can hold it |

---

## Failure consequences (always fail-forward)

**A failed roll NEVER means "nothing happens."** It means "something DIFFERENT happens."

**Physical actions** (climbing a colosseum wall, dodging the Root-Gnawer's tail, catching a falling Kara):
- Minor setback → takes longer, makes noise, uses up energy
- Clear fail → resource spent, wound taken, attention drawn
- Rough fail → real harm (post-combat-state per `fight.md`)
- Bad fail → major complication, possible saga-scale consequence

**Social actions** (bluffing a Marine officer, convincing Adaam Goroa, intimidating a pit fighter):
- Minor setback → NPC unconvinced but not offended
- Clear fail → NPC's attitude shifts negative, they share it with someone
- Rough fail → NPC acts against party interests (a report filed, a whisper spread, a door closed)
- Bad fail → NPC becomes open enemy, or the information reaches someone dangerous

**Information / perception actions** (reading a Poneglyph, noticing Yann Merlis's signet ring, hearing the whisper behind the bar):
- Minor setback → partial info, some details missing, have to ask again
- Clear fail → wrong target, wasted approach
- Rough fail → wrong conclusion believed as truth (leads to a decision on bad info)
- Bad fail → triggers a countermeasure (alerts the watcher, trips a trap, commits a crew resource wrongly)

For significant failures, log consequences:
```bash
bash tools/dm-consequence.sh add "[what happens]" "[when it triggers]"
```

---

## Fail-forward examples (shonen-flavored)

- **Failed lockpick on Yann Merlis's room?** The pick breaks in the lock. Now there's evidence Merdo tried. Make noise, use Judgment, or walk away.
- **Failed persuasion with the merchant council?** They nod politely. Then one of them sends a bird to Yann Merlis. The Donquixote clock just sped up.
- **Failed stealth past the Marines?** Not caught — but a low-rank sailor saw enough. His report reaches Hudore by morning bell.
- **Failed read on Parseval's ideology?** Merdo thinks he understands — he doesn't. The misread shapes how the fight opens.
- **Failed navigation?** Cress's chart is off. The Golgatha arrives at the right island a day later than the Log Pose suggested.
- **Failed Observation-Haki first attempt?** Merdo SENSED something — but it was the wrong thing. The real threat was behind him.

Every failure is a new story direction. When a check fails, ask: *"What's the most interesting thing that could go wrong?"*

---

## One Piece skill buckets (replaces D&D ability labels in narration)

Internal tracking can still use STR/DEX/CON/INT/WIS/CHA from `character.json`. But when narrating to the player, use One Piece buckets:

| Skill bucket | D&D ability | Examples |
|---|---|---|
| **Brawn / raw force** | STR | Tearing a gate open, lifting a fallen mast, pinning a foe |
| **Movement / reflex** | DEX | Rooftop runs, dodging, Rokushiki-adjacent moves, sleight of hand |
| **Endurance / tolerance** | CON | Taking hits, resisting poison, holding breath underwater, staying awake |
| **Cunning / read** | INT | Reading Marine paperwork, deciphering a Poneglyph symbol, tactical maps |
| **Instinct / sense** | WIS | Observation Haki (when it flickers), reading a room, tracking, medical read |
| **Presence / charm** | CHA | Crowd-work, declaring a dream, intimidating a fighter, commanding a crew |

For Haki-related checks, apply a modifier based on current development:
- **Budding** (Merdo's Armament): +0, wild, flickers only on protective-instinct triggers
- **Functional** (Ashren's Armament, Melaina's empathic Observation): +2 to relevant checks
- **Advanced** (Ashren's Observation): +3 and can act on limited future-sight
- **Conqueror's**: doesn't roll — it's a scene-direction per `one_piece_power_law.md`

---

## What NOT to do

- DON'T say "DC 14" to the player. Convert everything to narrative register.
- DON'T roll for routine work (Cress making a simple chart correction, Vesper doing a basic exam, Merdo eating).
- DON'T let failure = nothing. Always fail-forward.
- DON'T over-roll — rolling every sentence kills pace. Roll at the beats that MATTER.
- DON'T forget the crew is helping. Group checks use the highest relevant member's modifier + appropriate advantage, not everyone rolling.
- DON'T override the narrator's tone with mechanics speech. The dice are DM-internal.
