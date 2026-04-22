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

## Saga goal

**Reach Sabaody Archipelago at the same time as the Worst Generation.**

Canon timing: Sabaody convergence is ~Chapter 497+ (Straw Hats + Law + Kid + Bonney + Apoo + Drake + Urouge + Hawkins + Killer + Bege + Luffy all arrive before Marineford). Merdo is currently Alabasta-to-Jaya equivalent — ~270 chapters before Sabaody in canon terms. The path between Tessara and Sabaody covers several more islands on the Worst Route.

**Most arc antagonists emerge through play — they are not predetermined.** Tessara's Yann Merlis + Commodore Hudore are live because Merdo is at Tessara. Future islands will surface their own faces organically: world-responsive Marines, local regimes, rival crews the DM builds as the crew arrives, News Coo headlines that shape who notices Merdo. Characters Merdo will encounter on the Worst Route are NOT pre-written. Let scenes create them.

**The one world-canon convergence anchor: Aslan** (rack-024). Merdo's younger brother, alive, captain of his own crew, arrives at Sabaody Archipelago in the Worst Generation convergence window — same time as Merdo. Aslan may or may not be counted among the 11 Supernovas depending on when his bounty files vs. the canon convergence. Neither brother has seen the other in 11 years. Recognition is not automatic. The scene of first contact (at Sabaody, or earlier if paths cross) is EARNED in play, not pre-scheduled. See `CAMPAIGN_BIBLE.md` permanent-locks + `MERDO_SAGA_CREW_MASTER.md` Aslan entry. No other pre-written rivals — everything else emergent.

The rhythm the saga sits inside:
- Each island = one arc (arrival → local problem reveal → crisis → climax → feast → departure)
- News Coo cadence every 3 in-game days; bounty and rumor shape the world's response
- Worst Generation is a CONVERGENCE EVENT in the world — Merdo arrives in the window. Aslan arrives in the window. Canon Supernovas arrive in the window. Positioning emergent from play.
- Marineford War looms after Sabaody in canon; its shadow can inform later arcs but is not a Merdo-plot until it is.

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
   - `ONE PIECE RESEARCH/MERDO_SAGA_ANTAGONISTS.md` — current-arc antagonists only (auto-loaded via bible-sources.txt; new arc antagonists get added here as they emerge through play)
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
- **DEEP-LOCK plants NEVER surface in player-facing text, HUD, dashboards, NPC dialogue, bounty posters, or Marine files** until the player's play organically pressures them toward surface. These are character depth — do NOT pre-schedule reveal beats:
  - rack-003 (Melaina's mother = Shanks) — fires only if player pushes into Melaina's history hard.
  - rack-021 (Merdo's "D." — full name Archon D. Merdo) — surfaces through an earned scene, or not at all.
  - rack-024 (Merdo's younger brother Aslan is alive and captain of his own crew) — Aslan went to sea after Merdo was sold. Both brothers carry the D. Aslan doesn't yet know the shape of why Merdo disappeared; Merdo has not spoken Aslan's name since the sale. **Aslan arrives at Sabaody Archipelago in the Worst Generation convergence window — same time as Merdo. He may or may not be counted among the Supernovas depending on bounty timing.** DO NOT pre-schedule cameo/conversation/recognition beats — they fire when earned in play. The brothers might meet before Sabaody at sea, at an island, or not until Sabaody. Recognition is not automatic — they haven't seen each other in 11 years.
- **Merdo's brother reveal is NOT pre-scheduled.** Aslan exists as world-canon character truth. WHEN he surfaces in the crew's path, HOW recognition lands (if at all), and WHAT the first conversation becomes — all emergent from play. No "saga-mid reckoning" timetable.
- **No Brenne.** Not in the roster. Do not introduce.
- **Archived, do not narrate present-tense:** Darius Ravager, Ernst Rook. Departed Day 11. No cameo, no letter, no Den Den Mushi.

---

## Where things live

| Concept | Canonical owner |
|---|---|
| Combat (spatial, named attacks, panels, heart, aftermath) | `.claude/modules/dm-slots/fight.md` |
| Player verb (FINISHER COMMIT — the only one) | `.claude/modules/dm-slots/player-verbs.md` |
| Anti-slop craft floor (body agency, filter words, density, dark-fantasy ban, 3 prose registers) | `.claude/modules/dm-slots/anti-slop-master.md` |
| Canon fidelity gut-check | folded into `.claude/modules/dm-slots/anti-slop-master.md` |
| Tier map | `.claude/modules/dm-slots/rules-priority-tiers.md` |
| Reward calibration cadence | `.claude/modules/dm-slots/reward-calibration.md` |
| Address register — nobody calls Merdo "Captain" | `_reference/honorifics.md` (triggered) |
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

The first scene's pivot: does Merdo accept Sumi and Nox onto the crew? Everything downstream (rack-011 fire, rack-012 first partial, Cup sign-up, Yann's next move) branches from this. Surface the decision diegetically — pending-acceptance pressure from Sumi + Nox on the dock — and let Merdo answer in his own wording. Orders, acceptances, refusals are all declared intent; the only player mechanical verb is FINISHER COMMIT (per `player-verbs.md`).

## Path to Sabaody

Current: Tessara Port, Worst Route island 3 of a gauntlet.
Next several islands: emerge through play. Known/seeded geography: Aquila Isle (post-Tessara candidate, not guaranteed). Paradise transitions (Sabaody Archipelago, pre-Marineford convergence) sit at the far end of the saga — several arcs out.

Between Tessara and Sabaody, the DM builds islands, antagonists, rivals, and arc pressures as the crew approaches them. No pre-written rival crew. No pre-written saga villain. No pre-scheduled reveals. The world reacts to what Merdo does.
