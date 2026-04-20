## Rest & Recovery — Shonen / One Piece Downtime

**Rewritten for the Merdo Pirates campaign.** The D&D short-rest / long-rest / hit-dice framework doesn't fit a shonen anime. One Piece handles recovery through MEALS, MEDIC CARE, SLEEP, and TIME — with the body-receipt ledger from `emotion-will-heart.md` POST-COMBAT STATE and `realism-governors.md` tracking what's healed.

---

## Three types of shonen downtime

### 1. The meal (fast — one scene)

Food is a universal healer in One Piece. Melaina's galley is an operational anchor. A good meal restores some HP, stabilizes post-combat-state, and sometimes surfaces emotional beats.

Mechanics:
```bash
bash tools/dm-time.sh "_" "[date]" --elapsed 1
bash tools/dm-player.sh hp "[character]" +[amount]
```

Healing at a meal: 10-25% of max HP, depending on the meal quality and scene weight. Melaina's food is always at the high end. Tavern food is at the low end.

Narrative register: ALWAYS have the meal be a scene, not a mechanic. Melaina YELLING "EAT," Sumi trying to season the stew, Volo formally thanking the cook, Vesper stealing dessert, Merdo eating too fast. Heal numbers don't land; the SCENE lands. Healing is a consequence of connection.

### 2. Vesper's medical bay (slower — one or more scenes)

For wounds too serious for food. Vesper treats; the crew sits with. Cross-species medicine is her arc — she can treat Minks, Fish-Men, Oni, humans, and failed Zoans with increasing confidence. Lunarians are still experimental.

Mechanics:
```bash
bash tools/dm-time.sh "_" "[date]" --elapsed [2-8]
bash tools/dm-player.sh hp "[character]" +[amount]
bash tools/dm-note.sh "medical" "Vesper treated [character] for [injury]"
```

Healing: 30-70% of max HP, depending on injury severity and time. Takes 2-8 hours. Vesper BITES if the patient won't sit still. She narrates her own surgeries at full volume. A broken rib is not fully healed in one session — it takes days.

Limits:
- Haki-struck wounds heal slower (canon rule). Expect 1.5x normal time.
- Poison requires specific compound work (bark from Ashenmaw is a hard-earned asset in her kit).
- Unconscious patients can't wake until stabilization check clears (Vesper's call).
- Cross-species complications — she KNOWS she's the best at this, she's still LEARNING.

### 3. Long sleep / full ship rest (slow — a day or more)

For full crew recovery. Usually between arcs, on the ship sailing between islands, or post-arc on a friendly island. Everything heals that's going to heal passively. Saga-weight wounds may not clear.

Mechanics:
```bash
bash tools/dm-time.sh "_" "[next day date]" --elapsed 12 --sleeping
bash tools/dm-note.sh "rest" "Full night aboard the Golgatha — [events]"
```

Healing: up to full HP for routine wounds. Some narrative wounds persist regardless of rest (moral injury, grief, missing-person threads).

**NOTE:** `--elapsed` auto-ticks consequences. Never call `dm-consequence.sh tick` manually.

---

## Post-combat recovery per `emotion-will-heart.md`

Exhaustion tiers from the POST-COMBAT STATE section govern what rest does what:

| Tier | Recovery path |
|---|---|
| **Winded** | 1-2 scenes of normal activity — usually just "getting his breath back" |
| **Tired** | A rest + meal (short downtime) |
| **Spent** | A full night's sleep — he's genuinely off-duty until then |
| **Broken** | Days, and Vesper needed — the arc pauses on him healing |
| **Catastrophic** | Saga-weight consequence — days-to-weeks, possibly a whole arc of care |

The DM tracks this internally. The player sees the BODY in the scene (Merdo leaning on the rail, Ashren going still in a different way, Sumi's hoodie wet at the back).

---

## Healing items (canonical One Piece, not D&D potions)

The world has these. Not D&D potions — actual One Piece-style remedies.

- **Basic medic kit** — stops bleeding, small heal (~15% HP). Every crew member carries one.
- **Vesper's compounds** — specific to injury; 25-40% heal; must be applied by Vesper or an apprentice. These are CRAFTED, not bought at generic shops.
- **Bark from Ashenmaw healers** — earned at Island 1. Rare. For specific compound work.
- **Island-specific remedies** — Goroa's root tea, Tessara's pit-fighter salves (coarse but fast), sky-island honey (per canon), etc. Each island adds texture.
- **Rare / saga-weight items** — Life Return technique practitioners, Dr. Kureha-tier specialists, the Ope Ope no Mi (Law). These are narrative rewards, not shop inventory.

Do NOT invent generic "healing potion 2d4+2" items. Heal through in-world specificity.

---

## The food / mango / crew-bond layer

Food is also a relationship accelerator:
- **The mango conspiracy** (Merdo ↔ Vesper) — one of the running gags; food as emotional currency
- **Melaina's claiming via feeding** — she YELLS care through plates
- **Sumi's attempted seasoning (Salt War Mk II)** — she's wrong, she keeps trying, this is a scene beat

A "rest" scene is rarely JUST rest — it's a character scene. Use it.

---

## What NOT to do

- DON'T narrate rests as mechanics — narrate them as scenes. Food, comedy, quiet beats, maybe a flashback cue.
- DON'T full-heal a saga-weight wound with a single meal. Some injuries take arcs.
- DON'T let rest become downtime-bloat — if the crew is resting and nothing is happening, the DM should inject a pressure beat (per `momentum-governor.md`).
- DON'T skip the aftermath of a big fight. Even a 2-paragraph rest beat is better than cutting straight to the next arc.
- DON'T deploy D&D potion vocabulary. Basic/Greater/Superior labels are gone. Use in-world specificity.
