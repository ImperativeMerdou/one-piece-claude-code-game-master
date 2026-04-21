# CAMPAIGN BIBLE — Danzai Pirates

Runtime pointer. Loads via `dm-continue.md` Step 1. Keep lean — this is orientation, not lore.

---

## Identity

- **Campaign:** `one-piece-adventure` (active, set in `world-state/active-campaign.txt`)
- **Player character:** Merdo (captain of the Danzai Pirates — world-given, "Danzai" = *judgment*, after his fighting philosophy and the style-name he carries)
- **Current arc:** Day 11 — Tessara Port
- **Ship:** the Golgatha (hull 100/100 post-Goroa refit)
- **Narrator style:** `shonen-one-piece` (set in `campaign-overview.json`)
- **Advanced mode:** implicit via `narrator_style` + `nsfw_enabled` + arc toggles
- **NSFW:** enabled (consent-driven, player-paced; `_reference/nsfw-fanservice.md` reads on actual escalation only)

## Saga thesis

**The Danzai Pirates are sailing toward Hadrian's Table — the highest seat in the world's tribute chain, the man who has eaten at the top of every kingdom without once standing up. The saga ends when Merdo makes him stand up.**

Every arc is a step toward that table. Thrones along the way are practice. Hadrian is the destination. The question the saga answers is whether the crew that reaches his room is strong enough for the man to eat with instead of the man to kill.

## Arc toggles (from `campaign-overview.json`)

- `session_mood`: EAGER
- `setting_law`: STRICT
- `reveal_cadence`: STANDARD
- `failure_mode`: COSTLY
- `world_difficulty`: NORMAL
- `epistemic_mode`: alongside

See `.claude/modules/dm-slots/_reference/arc-toggles.md` + `epistemic-mode.md` for what each does.

---

## Authority order (on conflict)

1. **Masters** (full source of truth, not auto-loaded):
   - `ONE PIECE RESEARCH/MERDO_SAGA_CREW_MASTER.md` — crew bible
   - `ONE PIECE RESEARCH/MERDO_SAGA_ANTAGONISTS.md` — Tessara antagonists (auto-loaded via bible-sources.txt)
   - `ONE PIECE RESEARCH/MERDO_SAGA_RIVALS_FUTURE.md` — Diadem Pirates / Aslan (NOT auto-loaded until post-Tessara)
   - `ONE PIECE RESEARCH/ONE_PIECE_RESEARCH_BIBLE.md` + appearance / fight / powers / naming / episodes laws
2. **Runtime distillations** (auto-loaded via bible-sources.txt):
   - `CREW_RUNTIME.md` — live crew cards
   - `ACTIVE_PLANTS.md` — hot plants for current arc
3. **Rule modules** (auto-loaded via Python loader):
   - 12 always-on `dm-slots/*.md` modules + `_preamble.md` (full list in `rules-priority-tiers.md` — the canonical count)
   - Narrator style: `.claude/modules/narrator-styles/shonen-one-piece.md`
4. **Full ledger** (MANUAL_REFERENCE, not auto-loaded):
   - `chekhov-rack.json` — all plants

On drift: masters win. Re-generate runtime files from masters; do not patch distilled-only.

---

## Permanent locks (do NOT violate)

- **Merdo is the player.** Never narrate his actions, dialogue, choices, or internal reactions as settled fact. Always ask.
- **Merdo is straight; women only** for romance/NSFW (per `feedback_nsfw_straight_wide_scope.md`).
- **Dark / generic fantasy BANNED FOREVER** (per `anti-slop-master.md` → "DARK FANTASY / GENERIC FANTASY — BANNED FOREVER" section).
- **DEEP-LOCK plants NEVER surface in player-facing text, HUD, dashboards, NPC dialogue, bounty posters, or Marine files** until their explicit reveal beat fires:
  - rack-003 (Melaina's mother = Shanks)
  - rack-021 (Merdo's "D.")
  - rack-024 (Aslan is Merdo's brother)
  - rack-027 (Callista knows Merdo from pits)
  - rack-030 (Solei's songs — cold until post-Tessara)
- **No Brenne.** Not in the roster. Do not introduce.
- **Archived, do not narrate present-tense:** Darius Ravager, Ernst Rook. Departed Day 11. No cameo, no letter, no Den Den Mushi.

---

## Where things live

| Concept | Canonical owner |
|---|---|
| Combat (spatial, named attacks, panels, heart, aftermath) | `.claude/modules/dm-slots/fight.md` |
| Player verbs (FINISHER COMMIT + CAPTAIN'S ORDER) | `.claude/modules/dm-slots/player-verbs.md` |
| Anti-slop craft floor (body agency, filter words, density, dark-fantasy ban, 3 prose registers) | `.claude/modules/dm-slots/anti-slop-master.md` |
| Canon fidelity gut-check | folded into `.claude/modules/dm-slots/anti-slop-master.md` |
| Tier map | `.claude/modules/dm-slots/rules-priority-tiers.md` |
| Reward calibration cadence | `.claude/modules/dm-slots/reward-calibration.md` |
| Captain-vs-name register, honorifics | `_reference/honorifics.md` (triggered) |
| NPC firewall, hidden-block format, sonder | `_reference/living-world.md` (triggered) |
| Physiological / environmental / social aftermath | `_reference/realism-governors.md` (triggered; violence scroll lives in fight.md) |
| Session shape (title card, cliffhanger, NEXT TIME ON) | `_reference/session-episode-structure.md` (triggered at session start) |
| Crew voice signatures (runtime) | `CREW_RUNTIME.md` (this campaign folder) |
| Hot plants (runtime) | `ACTIVE_PLANTS.md` (this campaign folder) |
| Full plant ledger | `chekhov-rack.json` (this campaign folder — consult-on-demand, no longer auto-loaded) |

---

## Current live state summary

- **Crew on board:** Merdo, Ashren, Melaina, Vesper, Sable, Volo, Cress (nav), Kara (protégée). Sumi + Nox arrived dock Day 11, pending acceptance.
- **Archived this session:** Darius (ironwood contract, Tessara shipyard — departed before dawn Day 11; left a scrap of finished ironwood wrapped in cloth on Merdo's bunk, no note), Rook (sealed Marine file activated, chose long game inside apparatus — left a sealed letter for **Sable**, not Merdo, marked *"Open if I don't come back"*).
- **Armed external threads:**
  - Ashren's wings publicly revealed at Ashenmaw (Day 9) → Marine filing imminent on next News Coo cycle.
  - Tessara Cup sign-ups close sundown Day 11. **Volo already signed Merdo up.** Has not mentioned it. Will find out day-of, as usual.
  - Yann Merlis's acquisition pressure on Kara (fruit basket already delivered, uneaten on the Golgatha deck; Kara has been touching it daily, moving one fruit, putting it back — Vesper saw last night, Kara does not know Vesper saw).
  - Yann himself is at Tessara, black-hulled vessel beyond the breakwater, visible from the pier. He has been ashore at a dockside tea-house two piers down from the Golgatha berth since Day 9, quietly.
  - A Marine patrol left a chalk tally mark on the Golgatha's gangway piling before dawn Day 11. Crew noticed. Nobody erased it.
- **Visible on Nox at the dock:** a two-month-old knuckle scar on his right hand from the Hoyt Boys dock fight Merdo was in. If Merdo looks at the hand, he can place it. rack-011 live.
- **Hot plants (Tessara):** rack-006 (Sable/signet), rack-011 (Hoyt debt), rack-012 (Sumi/Vireen first partial), rack-014 (the Whale), rack-015 (Parseval/Allun), rack-016 (Petra says Vireen's name).

---

## First-session entry point

If this is the campaign's first live `/dm` session after bootstrap:

1. Run Step 1 of `dm-continue.md` (loads rules + bible + active arc + chekhov rack).
2. Verify player has a `character.json` — if not, `/create-character` is disabled for this campaign per Merdo being pre-designed (see `.claude/commands/dm.md` one-shot note). Merdo's sheet will need manual creation from CREW_RUNTIME.md entry.
3. Open scene: Golgatha at Tessara harbor, Day 11 morning. Sumi and Nox on the dock — pending acceptance is the opening beat.

The first scene's pivot: does Merdo accept Sumi and Nox onto the crew? Everything downstream (rack-011 fire, rack-012 first partial, Cup sign-up, Yann's next move) branches from this. Surface the decision diegetically — pending-acceptance pressure from Sumi + Nox on the dock — and let Merdo answer in his own wording. CAPTAIN'S ORDER (per `player-verbs.md`) is the mechanical verb available to him; it is not the label for the scene beat.
