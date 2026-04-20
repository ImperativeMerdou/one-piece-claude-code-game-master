## Arc Toggles — Mood / Setting Law / Reveal Cadence / Failure Mode / World Difficulty

**Adapted from KittyLotus governors + Paramnesia Mood + Paramnesia Difficulty.** Five session/arc-level dials the user can set to tune the FLAVOR of any stretch of play. Each is a single-line setting in `campaign-overview.json` and the DM honors it.

---

## TOGGLE 1 — Mood (session anchor)

Locks the SESSION's emotional flavor. Set in `campaign-overview.json.session_mood`. The narrator carries this mood through all scenes for the session.

| Mood | Feel | Best for |
|---|---|---|
| ☀️ EAGER | Forward-leaning, hopeful, kinetic. Characters move toward things. | New island, recruitment arc, training, tournament. |
| 🩶 HEAVY | Weighted, grave, exhausted. Characters carry yesterday into today. | Aftermath of loss, post-major-fight, returning to a wound. |
| ⚡ TENSE | Coiled, watchful, threat-adjacent. Every peace is brittle. | Doflamingo on the move, Marines closing in, infiltration. |
| 😏 PLAYFUL | Light, mischievous, rule-bending. Comedy first. | Downtime, port stops, comedic arcs, crew bonding. |
| ⏳ PENT-UP | Want without release. Tension builds, won't break. | Slow-burn romance arcs, the day before the war. |
| 🍷 HUNGOVER | Spent, cynical, post-everything. Trying to remember why. | After a bad loss, an arc where the crew is rebuilding spirit. |
| ☀️🩶 SMITTEN | Open, soft, attached. Vulnerable. | Romance arcs where the heart leads. |

**Default:** EAGER for upbeat arcs, PLAYFUL for downtime, TENSE for stake-rising arcs.

---

## TOGGLE 2 — Setting Law

How strictly the world enforces its own rules — Devil Fruit logic, Haki, Marine bureaucracy, geographic phenomena. Set in `campaign-overview.json.setting_law`.

| Law | What it means | Best for |
|---|---|---|
| 🟢 LOOSE | Rules bend for tone and joy. Devil Fruit logic is anime-elastic. Sky islands have whimsy physics. Comedic stretches of impossible. | Skypiea-style arcs, comedy-first islands, hidden joy moments. |
| 🟡 STRICT | Rules are binding cause/effect. Drowning is real. Seastone is paralysis. Marine reports compound. Bounties update. | Default for the Grand Line — most arcs. |
| 🔴 HOSTILE | Rules are punitive. The world takes from you. Mistakes have weight. Healing is slow. Bills come due. | New World arcs, war scenes, trauma arcs. |

**Default for current campaign (the Paradise route they drew): STRICT, with HOSTILE moments around Doflamingo/Marines.**

---

## TOGGLE 3 — Reveal Cadence

How fast plot truths, motives, identity reveals are disclosed. Distinct from pacing — this is specifically about disclosure speed. Set in `campaign-overview.json.reveal_cadence`.

| Cadence | Speed | Best for |
|---|---|---|
| 🔵 SPARCE | Glacial. Reveals across multiple sagas. The Void Century. The Will of D. Ohara. | Saga-defining mysteries (decade-scale). |
| 🟢 DRIP | Slow. Reveals across an arc or two. Vivi's identity, Robin's history. | Character backstories, mid-tier secrets. |
| 🟡 STANDARD | Normal anime pacing. Reveals land within an arc when earned. | Default for most arcs. |
| 🔴 AGGRESSIVE | Fast. Reveals land within a few scenes. Flashbacks in real-time. | Backstory arcs, infodump-by-design. |

**Default for current campaign: STANDARD, with SPARCE for saga-author-truth threads (Melaina's mom, Sumi's Nika, etc.).**

---

## TOGGLE 4 — Failure Mode

How failed actions resolve TEXTURALLY. Doesn't force failure; shapes the consequence-shape when it happens. Set in `campaign-overview.json.failure_mode`.

| Mode | What failure looks like | Best for |
|---|---|---|
| 🟢 CLEAN | Failure is brief. The plan didn't work, you regroup, you try again. Low cost. | Comedy arcs, training, low-stakes moments. |
| 🟡 COSTLY | Failure costs something real. A wound, a debt, a relationship strained, an item lost. | Default for most arcs. |
| 🟠 HUMILIATING | Failure is PUBLIC. Reputation damaged. Witnesses laugh. The Coo prints the wrong story. | Public-spectacle arcs (Tessara!), reputation arcs. |
| 🔴 ESCALATORY | Failure summons more failure. The thing you tried to prevent gets WORSE. The Marines you fled bring backup. | War arcs, late-saga, rescue arcs. |

**Default for current campaign (Tessara): COSTLY, with HUMILIATING active for the colosseum arc specifically.**

---

## TOGGLE 5 — World Difficulty

How hard the world pushes back. Set in `campaign-overview.json.world_difficulty`.

| Difficulty | The world | Best for |
|---|---|---|
| 🟢 CASUAL | Forgiving. The crew has narrative armor. Comedic outcomes prioritized. | First arcs, comedy-first arcs, slice-of-life beats. |
| 🟡 NORMAL | Anime-level. Bad things happen, but the crew finds a way. Standard shounen. | Default. |
| 🟠 HARD | Realistic. Bad calls have permanent consequences. NPCs die. Relationships fracture. | Mid-saga, post-Sabaody. |
| 🔴 BRUTAL | Punitive. The world WILL break you if you're sloppy. What happened happened — no retconning. | Late saga, war arcs. |

**Critical anti-cave rule (per Paramnesia):** *If the user complains that an outcome was unfair and the DM caves, the DM has failed the difficulty contract.* If the player chose HARD or BRUTAL and a beat lands hard, the DM does NOT soften it. The choice is the choice.

**Default for current campaign: NORMAL, with HARD reserved for player-requested arcs.**

---

## All five together

A sample arc setup might be:

```json
{
  "session_mood": "TENSE",
  "setting_law": "STRICT",
  "reveal_cadence": "DRIP",
  "failure_mode": "HUMILIATING",
  "world_difficulty": "NORMAL"
}
```

This would feel like: serious stakes, hard rules, slow disclosure, public consequences, but the crew has narrative footing to fight back.

For a different vibe (downtime arc):

```json
{
  "session_mood": "PLAYFUL",
  "setting_law": "LOOSE",
  "reveal_cadence": "STANDARD",
  "failure_mode": "CLEAN",
  "world_difficulty": "CASUAL"
}
```

This would feel like: comedic, rules-bend-for-joy, normal disclosure, low cost, narrative armor on. A breath between major arcs.

The user can change these at any time. The DM honors the change immediately and keeps it for the duration.
