# Rules Priority — Module Map

## LOADING

Files in `.claude/modules/dm-slots/` (top level only) auto-load every session via the Python loader. Underscore-prefixed folders are skipped:

- `_reference/` — consult-on-demand. DM reads via Read tool when a scene calls.
- `_reference/_vanilla/` — D&D 5e fallback templates.
- `_disabled-dnd/` and `_disabled-parody/` — retired, do not reinstate.

Campaign-file loading for the Merdo campaign: `CAMPAIGN_BIBLE.md`, `CREW_RUNTIME.md`, `ACTIVE_PLANTS.md`, and `ONE PIECE RESEARCH/MERDO_SAGA_ANTAGONISTS.md` are appended via `dm-continue.md` + `bible-sources.txt`. Runtime authority order: master > runtime distillation > dm-slot > ledger.

---

## ALWAYS-ON (loads every response)

Craft floor and runtime structure:

- `_preamble.md` — mode gate (VANILLA / ADVANCED)
- `anti-slop-master.md` — craft floor; prose + canon + dark-fantasy ban
- `dm-authority.md` — DM owns stats; player owns FINISHER COMMIT
- `fight.md` — combat, named attacks, panels, heart, aftermath
- `length-governor.md` — 300–500w target, dynamic flex
- `momentum-governor.md` — stall detector with scene-type gates
- `narration.md` — 3-layer opener, no-footer ending
- `one-piece-hud.md` — HUD + combat header + crowd gauge
- `player-verbs.md` — FINISHER COMMIT (the only player mechanical verb)
- `reward-calibration.md` — cadence of small wins
- `rules-priority-tiers.md` — this file
- `search-guide-critical.md` — tool-call hygiene
- `state-persistence.md` — state writes before narration

Plus, via `dm-continue.md`:
- `narrator-styles/shonen-one-piece.md` — voice + ritual trigger index
- Campaign bibles and antagonist runtime file

---

## TRIGGERED REFERENCE (read on demand via Read tool)

Structural beats — fired when the scene calls, not by default:

- `_reference/session-episode-structure.md` — title card / cliffhanger / NEXT TIME ON shape; load at session start
- `_reference/island-arrival.md` — 4-beat arrival; load on new island only
- `_reference/nakama-moments.md` — feast types; arc-close and meal beats
- `_reference/goodbye-beats.md` — arc-close departure ceremony
- `_reference/dream-declarations.md` — the defining One Piece beat; once per arc
- `_reference/flag-and-covenant.md` — new-member accept / saga-defiance / flag-raise
- `_reference/chekhov-gun-rack.md` — plant/fire mechanism
- `_reference/honorifics.md` — per-character address register
- `_reference/living-world.md` — hidden-block, NPC firewall, proactive NPCs, sonder
- `_reference/realism-governors.md` — physiological / environmental / social scrolls (violence folded into `fight.md`)
- `_reference/specialist-agents.md` — when to spawn a specialist agent
- `_reference/named-attacks-library.md` — per-crew attack vocabulary palette

Canon + craft (consult when a scene needs them):

- `_reference/canon-timeline.md` · `canon-factions.md` · `canon-encounters.md` · `canon-bounty-tiers.md` · `canon-geography.md` · `canon-divergence.md` · `haki-tiers.md` · `devil-fruit-awakening.md`
- `_reference/villain-kit.md` · `martial-epic-beats.md` · `arc-anatomy.md` · `saga-anatomy.md` · `legendary-fights.md` · `messy-characters.md` · `oda-voice.md` · `epistemic-mode.md` · `arc-toggles.md` · `prose-affinities.md` · `character-focus-episodes.md` · `cross-crew-encounters.md` · `haki-training-arc.md`
- `_reference/manga-sfx.md` · `meanwhile.md` · `ost-cues.md` · `flashback.md` · `native-tongue.md` · `cover-page-stories.md` · `sbs-questions.md` · `op-ed-themes.md` · `genre-dials.md` · `arc-visual-identity.md` · `news-coo.md` · `anime-craft.md` · `manga-craft.md` · `qc-dice.md`
- `_reference/conditions-quick-reference.md` · `rest-recovery.md` · `skill-checks.md` · `one-shot-arcs.md` · `nsfw-fanservice.md` (read ONLY on actual escalation)
- Infra references: `technical-notes.md` · `world-state-files.md` · `your-dm-tools.md` · `vivre-cards.md` · `player-dashboard.md` · `session-mood-request.md`

Archived sources (Phase 1 surgery, do not reinstate without review):
- `_legacy_phase1/dm-slots/` — spatial-violence, named-attacks, manga-panel-grammar, emotion-will-heart, prose-registers; all merged into `fight.md` or retired.
- `_legacy_phase1/SAGA_ANTAGONISTS-pointer.md` — pointer file; bible-sources.txt loads the real target directly.

---

## PLAYER-INVOKED

`/dm dashboard`, `/dm highlights` (Phase 2 wiring), `/dm vivre`, `/dm mood`, `/dm genre`, `/dm canon-strict`, `/dm faster`, `/dm slow`, `/dm next time`, `/dm crew`, `/dm finish`, `/dm order <name> <action>`. Detail in `player-verbs.md`, `_reference/session-mood-request.md`, `_reference/genre-dials.md`, `_reference/player-dashboard.md`.

---

## BALANCE

- Always-on runs every response. Keep it tight.
- Triggered reference fires when the scene asks. Over-firing reads as a checklist; under-firing reads as a flat world. Rare = harder landing.
- When uncertain whether to fire a triggered flourish: don't.
