# READY TO PLAY — One Piece Claude Game Master

Fork of [Claude Game Master](https://github.com/Sstobo/Claude-Code-Game-Master) tuned for a living One Piece campaign. Built on the upstream engine. Not a replacement.

## What this repo is

A Claude Code-driven One Piece TTRPG where you play **Merdo**, captain of the Merdo Pirates, and the DM runs the world in Oda's grammar — Marines, Yonko, Devil Fruits, Haki, crowds that witness, news that travels, named attacks shouted at the point of no return. No D&D math surfaces in play.

## State

- **Branch:** `main`
- **Active campaign:** `one-piece-adventure`
- **Current arc:** Day 11 — Tessara Port
- **Mode:** ADVANCED (narrator style `shonen-one-piece`, NSFW opt-in on)
- **Phase status:** Phase 1 runtime surgery + Phase 2 style/repetition delta shipped. Ready for play.

## Authoritative files

Always-on runtime:
- `.claude/modules/dm-slots/` (13 craft modules — anti-slop, fight, player-verbs, HUD, etc.)
- `.claude/modules/narrator-styles/shonen-one-piece.md`
- `world-state/campaigns/one-piece-adventure/CAMPAIGN_BIBLE.md`
- `world-state/campaigns/one-piece-adventure/CREW_RUNTIME.md`
- `world-state/campaigns/one-piece-adventure/ACTIVE_PLANTS.md`
- `ONE PIECE RESEARCH/MERDO_SAGA_ANTAGONISTS.md`

Consult-on-demand:
- `.claude/modules/dm-slots/_reference/*` — session structure, island arrival, nakama beats, chekhov rack, honorifics, living-world, realism, etc.
- `world-state/campaigns/one-piece-adventure/chekhov-rack.json` — full plant ledger
- `ONE PIECE RESEARCH/MERDO_SAGA_CREW_MASTER.md` — crew master bible
- `ONE PIECE RESEARCH/MERDO_SAGA_RIVALS_FUTURE.md` — Diadem Pirates / future foes (do not load until post-Tessara)

Legacy (archived, not loaded):
- `.claude/modules/_legacy_phase1/` — pre-consolidation combat files kept for rollback reference

## How to start

```bash
git clone https://github.com/ImperativeMerdou/one-piece-claude-code-game-master.git
cd one-piece-claude-code-game-master
./install.sh          # first-time setup — pulls deps via uv
claude                # launch Claude Code in this directory
/dm-continue          # start the session on the active campaign
```

`/dm-continue` auto-loads: rule modules, campaign bible, crew runtime, active plants, antagonist file, arc toggles. First scene is the Golgatha at Tessara harbor, Day 11 morning, Sumi and Nox pending acceptance on the dock.

## Player verbs

The DM runs the crew, the world, and Merdo's body. You run Merdo's voice, choices, and two specific levers:

- **FINISHER COMMIT** — Type your attack name in ALL CAPS (`**"CONQUEROR'S WILL!!"**`) or `/dm finish` to fire the named-attack panel. The DM honors your wording.
- **CAPTAIN'S ORDER** — Name + imperative (`"Ashren — mast."` / `"Vesper, seal it."`) forces the named crewmate to answer on-screen in the next beat. The DM decides organically what that answer is — compliance, modification, question back, counter-propose, or a flat no. Crew are not robots.

Everything else is declared intent. Describe what Merdo tries; the DM writes what happens.

## What's untracked by design

- `.env`, `.claude/settings.local.json` — personal.
- `world-state/campaigns/one-piece-adventure/session-log.md`, `consequences.json`, `saves/` — live session state, local-only.
- `source-material/` contents — your own imported books/PDFs.

Everything else required for a fresh clone to play is tracked.

## Known

- `SAGA_MAP.md`, `DRAMA_THREADS.md`, `NEXT_SESSION_HOOK.md`, `MERDO_HIGHLIGHTS.md` — referenced by some trigger-loaded `_reference/*` files but do not exist in this campaign. Not load-blocking (dead references only surface if the DM consults those reference files).
- `anime-forum.md` lives in `_disabled-parody/` — a few reference files still reference it as if active. Not load-blocking.

## Credit

Upstream engine: [Sstobo/Claude-Code-Game-Master](https://github.com/Sstobo/Claude-Code-Game-Master). Runtime craft distilled from the SillyTavern presets Paramnesia / KittyLotus / Nemo / Celia (see `ONE PIECE RESEARCH/ST Presets/`), stripped of preset branding and adapted to the One Piece register.
