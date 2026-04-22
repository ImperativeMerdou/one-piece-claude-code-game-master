# READY TO PLAY — Danzai Pirates (One Piece Claude Game Master)

Fork of [Claude Game Master](https://github.com/Sstobo/Claude-Code-Game-Master) tuned for a living One Piece campaign. You play **Merdo**, giant-blooded half-Elbaf captain of the **Danzai Pirates**, sailing toward Hadrian's Table.

---

## The one-liner

You play Merdo. The DM runs the world, the crew, and the consequences. Everything you type in the chat is declared intent — the DM writes what happens. The one mechanical lever you have that the DM cannot override is **FINISHER COMMIT**: type an ALL-CAPS quoted named attack and the DM fires the panel with your exact wording.

Nobody calls you Captain. You are Merdo.

---

## Current state (saved, ready to resume)

- **Campaign:** `one-piece-adventure`
- **Saga:** Merdo Saga — Year 1
- **Arc:** Day 11 — Tessara Port
- **Mode:** ADVANCED (narrator style `shonen-one-piece`, NSFW opt-in on)
- **Party:** 9 members — Ashren (Lunarian 1st mate), Melaina (Oni cook/Medusa), Vesper (Mink doctor), Sable (CP-0 alum/Paku Paku), Volo Ptero Finnbalor (Fish-Man helmsman), Cress (navigator), Kara Odinu (protégée), Sumi (Kami Kami / paper), Nox (twin flintlocks)
- **Merdo:** Lvl 4, HP 120/120, AC 15, bounty ฿0, epithet not yet earned. Weapons: kanabo **Judgment**, flail **Gnadenkette**, spiked gauntlets.
- **Haki:** Armament 45/100 (signature), Observation 30/100 (functional), Conqueror's 5/100 (uncontrolled).
- **Ship:** Golgatha hull 100/100, crew morale 75/100.
- **Active plots (4):** Tessara Cup (main) · Sumi+Nox Acceptance (side) · Kara Acquisition Pressure (threat, Yann) · Ashren Marine Filing (threat).
- **Dormant plots (4 — activate post-Tessara):** Post-Tessara Horizon / Aquila Isle · Diadem Pirates Rumor · First World Government Attention · Hoyt Boys Aftermath Ripple.
- **Pending consequences (7):** armed Day-11 threads + live-play follow-ups (Yann humiliation after notebook destroyed, Marine patrol converging on Golgatha berth within 10-15 min).

Full state is always in the engine — `dm-overview.sh` shows it, `dm-search.sh <anything>` queries it.

---

## How to play

### First time in a session

```
/dm-continue
```

**Run this ONCE at session start.** It loads the rule stack, the campaign bible, crew runtime, antagonists, hot plants, arc toggles, current state — ~2000 lines of context. On first run, the DM has everything. Subsequent turns just type into chat.

**Do NOT re-run `/dm-continue` every turn.** That re-executes the full pipeline and makes responses take 5+ minutes. Type normally after the first load.

### Every turn after that

Just talk. Describe what Merdo does, says, thinks (you control his thoughts), decides. The DM writes what happens. Examples:

> "Merdo walks over to Sumi and puts a hand on her shoulder. He's not hiding the grin."
>
> "I want to read Yann — really look at him. What do I see?"
>
> "Nox, barrel. Break it."

All of that is declared intent. DM resolves in prose.

### The one mechanical verb — FINISHER COMMIT

Exactly one kind of action gives you an override the DM must honor: firing a named attack at point-of-no-return.

Trigger any of these:

- **ALL-CAPS quoted named move:** `**"CONQUEROR'S WILL — TOMB-MARKER!"**`
- **Slash command:** `/dm finish` (DM pulls a name from the library)
- **Bare commit line:** `"Finish him."` / `"No more. End it."` / `"The kanabo comes up."`

The DM freezes the beat, fires the panel with your wording verbatim, lands the impact, and stops. One finisher per fight.

Your attack grammar (three tiers):

- **Medium** — `DANZAI EIGHT TRIGRAMS — [VERDICT / GUILTY-FOOT / GALLOWS-WEIGHT / CHAIN-MEASURE / WITNESS-GRIP / LAST-WORD / BREAKING-POINT / IRON-GATE]`
- **Heavy** — `CONQUEROR'S WILL — [TOMB-MARKER / NO PARDON / LAST RITES / RORORORO]` or bare shout `**"CONQUEROR'S WILL!!"**`
- **Ultimate (saga, not Tessara)** — `DIVINE SUNDERER — [name emerges when fired]`

Day-11 ceiling is Conqueror's Will. Divine Sunderer is reserved for saga-peak.

### Everything else is declared intent

Orders, threats, improvisation, lying, feasts, silence, trying something weird — just say it. The DM runs the crew like people. They'll comply, push back, question, or refuse based on who they are. Hierarchy is real but they're not robots.

### Useful slash subcommands

| Command | What it does |
|---|---|
| `/dm-continue save` | End session, persist state, log to session-log.md |
| `/dm-continue end` | Same as save |
| `/dm-continue character` | Merdo's full sheet |
| `/dm-continue overview` | World state summary |
| `/dm-continue status` | Quick state dump |
| `/dm finish` | Fire a finisher (alternative to typing the name) |
| `/dm mood <type>` | Request tonal shift — action / quiet / comedy / heart / saga |
| `/dm dashboard` | "What's cool right now" player-facing |
| `/dm crew` | Crew status through behavior |
| `/dm next time` | Cliffhanger + NEXT TIME ON preview |

---

## Hard rules the DM runs by

Top-loaded in `_preamble.md`, checked every turn:

1. **No echo.** Your words don't appear back in the response. DM starts from the NEXT beat.
2. **DM never narrates Merdo.** His actions, dialogue, thoughts, interior — yours only.
3. **Nobody says "Captain."** You are "Merdo." In every language, every register, every scene.
4. **Crew is "Danzai Pirates."** Not "Merdo Pirates."
5. **Batch persistence.** Tool calls happen at end-of-turn, not mid-response.
6. **Hybrid length ~400w.** Flex to ~600 on earned peaks (finishers, dream declarations, ideology fights, saga beats).
7. **Canonical files win over working memory.** Bible + CREW_RUNTIME + MERDO_SAGA_ANTAGONISTS + facts.json are truth.

---

## Engine underneath (fully wired)

- **Persistence:** character.json, npcs.json, locations.json, plots.json, facts.json, consequences.json, session-log.md — all engine-tracked
- **Custom stats module:** 6 OP-specific stats visible and modifiable (Armament/Observation/Conqueror's Haki, bounty berries, ship hull, crew morale)
- **Inventory module:** unique items (Judgment, Gnadenkette, gauntlets, wolf-fur cloak, Darius's ironwood scrap) + stackables (berries, provisions, repair material, rum)
- **Plot tracking:** 8 plots (4 active Tessara + 4 dormant future-arc)
- **Consequence scheduling:** 7 armed threads with triggers; `dm-consequence.sh resolve <id>` fires one when its trigger lands
- **Facts/notes:** 30+ across lore, rules, hidden intel, running gags, world-offscreen — all searchable via `dm-search.sh`
- **World-travel module:** available but not activated (anchored at Tessara). Activate when sailing between islands post-Tessara.

---

## The world at your fingertips

- **Locations:** Tessara Port (berth, Pier Quarter, Colosseum, Cage, Tea-house pier), Ashenmaw (visited, wings-reveal incident), Korvaal (visited, Kara's family), Aquila Isle (next, dormant), Angora (Merdo's home, saga-mid reference only)
- **Live antagonists:** Yann Merlis (Donquixote field broker, ACTIVE target on Merdo post-humiliation), Commodore Hudore (Cage warden, Cup champion, Vireen-daughter wound)
- **Future threats (dormant):** Diadem Pirates (Archon Aslan + Callista + Ingrid + Esen + Solei — saga-long rival crew, first cameo post-Tessara), WG escalation to CP attention (post-first-bounty)
- **Saga endgame:** Hadrian's Table — the man at the top of every kingdom's tribute chain. The saga ends when Merdo makes him stand up.

---

## Where to go next

Open Claude Code in this directory. Type `/dm-continue`. The DM picks up where you left off — Pier Quarter, Cup plaza lane, Marine patrol converging on the Golgatha berth within 10-15 minutes, Yann now ACTIVE target after his notebook got destroyed.

After the opening scene lands, just type into the chat. Go.

---

## Credit

Upstream engine: [Sstobo/Claude-Code-Game-Master](https://github.com/Sstobo/Claude-Code-Game-Master). Runtime craft distilled from SillyTavern presets Paramnesia / KittyLotus / Nemo / Celia (see `ONE PIECE RESEARCH/ST Presets/`) and informed by Andrej Karpathy's LLM-coding guidelines (no overengineering, surgical changes, goal-driven verification).
