# READY TO PLAY — Danzai Pirates (One Piece Claude Game Master)

Fork of [Claude Game Master](https://github.com/Sstobo/Claude-Code-Game-Master) tuned for a living One Piece campaign. You play **Merdo**, giant-blooded half-Elbaf captain of the **Danzai Pirates**, sailing the Worst Route toward Sabaody Archipelago — timed to arrive as the Worst Generation converges.

---

## The one-liner

You play Merdo. The DM runs the world, the crew, the consequences, and the resolution of everything Merdo does. No mechanical verbs, no special syntax, no override levers — you write what Merdo does, says, thinks, tries, commits to. The DM reads your intent and resolves it in prose. That's the whole contract.

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
- **Dormant plots (activate post-Tessara):** Post-Tessara Horizon / Aquila Isle · Path to Sabaody · First World Government Attention · Hoyt Boys Aftermath Ripple.
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

### Named attacks

Named attacks still fire in fights — the DM decides when a scene has earned one, writes the scream, runs the panel, lands the impact. If you already wrote the scream into your own intent ("Merdo roars TOMB-MARKER and brings Judgment down"), the DM may honor your wording when it fits Merdo's register. Either way the DM interprets and resolves.

Merdo's attack grammar (reference, not trigger):

- **Medium** — `DANZAI EIGHT TRIGRAMS — [VERDICT / GUILTY-FOOT / GALLOWS-WEIGHT / CHAIN-MEASURE / WITNESS-GRIP / LAST-WORD / BREAKING-POINT / IRON-GATE]`
- **Heavy** — `CONQUEROR'S WILL — [TOMB-MARKER / NO PARDON / LAST RITES / RORORORO]` or bare shout `CONQUEROR'S WILL!!`
- **Ultimate (saga-scale, reserved)** — `DIVINE SUNDERER — [name emerges when fired]`

Day-11 ceiling is Conqueror's Will. Divine Sunderer is reserved for saga-peak.

### Everything is declared intent

Orders, threats, improvisation, lying, feasts, silence, trying something weird — just say it. The DM runs the crew like people. They'll comply, push back, question, or refuse based on who they are. Hierarchy is real but they're not robots.

### Useful slash subcommands

| Command | What it does |
|---|---|
| `/dm-continue save` | End session, persist state, log to session-log.md |
| `/dm-continue end` | Same as save |
| `/dm-continue character` | Merdo's full sheet |
| `/dm-continue overview` | World state summary |
| `/dm-continue status` | Quick state dump |
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
- **Future threats:** mostly emerge through play — no pre-written rival crew or saga villain. World-response to Merdo's actions (Marine escalation, Donquixote response, new ports with new problems) shapes who shows up. When antagonists land, they earn their depth in the moment.
- **The one world-canon convergence anchor:** Merdo's younger brother **Aslan** (DEEP-LOCK, rack-024) — alive, 18, captain of his own pirate crew. Arrives at Sabaody Archipelago in the Worst Generation window, same time as Merdo. Possibly counted among the 11 Supernovas depending on bounty timing at convergence. Neither brother has seen the other in 11 years. Recognition is not automatic. First contact emerges from play — not pre-scheduled. All other details about Aslan (crew name, lieutenants, fruit, flag) generate at first contact.
- **Saga goal:** reach Sabaody Archipelago at the same time as the Worst Generation convergence (canon ~Chapter 497+ — Luffy, Law, Kid, Bonney, Apoo, Drake, Urouge, Hawkins, Killer, Bege converging pre-Marineford). Several more islands between Tessara and Sabaody — each its own arc, each emergent. Merdo's personal dream (drag thrones into dirt) is his character line, not the saga ending.

---

## Where to go next

Open Claude Code in this directory. Type `/dm-continue`. The DM picks up where you left off — Pier Quarter, Cup plaza lane, Marine patrol converging on the Golgatha berth within 10-15 minutes, Yann now ACTIVE target after his notebook got destroyed.

After the opening scene lands, just type into the chat. Go.

---

## Credit

Upstream engine: [Sstobo/Claude-Code-Game-Master](https://github.com/Sstobo/Claude-Code-Game-Master). Runtime craft distilled from SillyTavern presets Paramnesia / KittyLotus / Nemo / Celia (see `ONE PIECE RESEARCH/ST Presets/`) and informed by Andrej Karpathy's LLM-coding guidelines (no overengineering, surgical changes, goal-driven verification).
