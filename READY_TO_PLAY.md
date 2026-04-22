# READY TO PLAY — Danzai Pirates (One Piece Claude Game Master)

Fork of [Claude Game Master](https://github.com/Sstobo/Claude-Code-Game-Master) tuned for a living One Piece campaign. You play **Merdo**, giant-blooded half-Elbaf captain of the **Danzai Pirates**, sailing the Worst Route toward Sabaody Archipelago — timed to arrive as the Worst Generation converges.

---

## The one-liner (CYOA mode)

You are the DIRECTOR. Merdo is the AUTHORED character. Every DM response ends with a CYOA footer — **4 diegetic options + [5] freeform**. You pick a number, or type whatever Merdo does in your own words. The DM writes Merdo fully — his actions, dialogue, thoughts, the RORORORO grin, the gauntlet flex, the shout — using your chosen direction.

Puppeting is allowed. Speaking for Merdo is allowed. You lead his path.

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

Scene prose lands (~400 words of loud, kinetic, anime-register One Piece). Then the CYOA footer:

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  🏴‍☠️  WHAT DOES MERDO DO?
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  [1] <action — specific, scene-native>
  [2] <different tone>
  [3] <risky / comedic / unexpected>
  [4] <quiet / tactical / weird>
  [5] Or tell me what Merdo does.
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

**How to respond:**
- Type `1` (or `[1]`) to pick option 1. Same for 2, 3, 4.
- Type `5` or any freeform prose to override with your own direction. (*"Merdo walks past all four options and yells for Sumi."*)

The DM writes Merdo fully on the next turn — his actions, dialogue, the grin, the specific line of his — based on whichever direction you chose.

### Named attacks

Fire when a CYOA option names one (e.g. `[1] Bring Judgment down — scream "TOMB-MARKER!"`) and you pick it, or when your freeform mentions one, or when the DM decides the scene has earned one. Merdo's attack grammar (reference):

- **Medium** — `DANZAI EIGHT TRIGRAMS — [VERDICT / GUILTY-FOOT / GALLOWS-WEIGHT / CHAIN-MEASURE / WITNESS-GRIP / LAST-WORD / BREAKING-POINT / IRON-GATE]`
- **Heavy** — `CONQUEROR'S WILL — [TOMB-MARKER / NO PARDON / LAST RITES / RORORORO]` or bare shout `CONQUEROR'S WILL!!`
- **Ultimate (saga-scale, reserved)** — `DIVINE SUNDERER — [name emerges when fired]`

Day-11 ceiling is Conqueror's Will. Divine Sunderer is saga-reserved.

### Anime register, every response

The DM has a hard rule: every response must carry at least TWO of — inline SFX (**DON.** **GOSHA.** **SHIIIN.**), named laugh (RORORORO / GWAHAHAHA / shishishi / ehehehe / HUHUHU), ALL-CAPS shouted line, visual comedy beat (chibi / vein / sweatdrop / spit-take / shark-teeth / stumble / crowd-pop), kinetic physics verb (LAUNCH / SKID / CRASH-THROUGH), distinct verbal tic (Volo's "you saw it," Melaina's "EAT," Vesper's "STOP MOVING," Sumi's "PIRATE QUEEN"). If a response reads like generic serious fantasy — grimdark, prestige-drama, contemplative-literary — it's WRONG.

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

1. **CYOA footer every response** — 4 diegetic options + [5] freeform. No exceptions (except mid-panel beats and session-close).
2. **DM writes Merdo fully** when you pick or freeform — actions, dialogue, thoughts, interior. Puppeting allowed.
3. **Anime / kinetic / cartoon register every response** — at least 2 of SFX / named laugh / CAPS / visual comedy / kinetic verb / verbal tic. Grimdark + prestige-drama BANNED.
4. **No echo.** Your words don't appear back in the response.
5. **Nobody says "Captain."** You are "Merdo." Always.
6. **Crew is "Danzai Pirates."** Not "Merdo Pirates."
7. **Batch persistence.** Tool calls happen at end-of-turn.
8. **~400w scene prose + ~50-80w CYOA footer.** Flex scene to ~600 on earned peaks.
9. **Canonical files win over working memory.**

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
