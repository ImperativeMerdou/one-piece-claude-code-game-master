# Rules Priority — Three Buckets, No Audit Machinery

## LOADING BEHAVIOR

Modules in `.claude/modules/dm-slots/` auto-load every session via the Python loader UNLESS they are in an underscore-prefixed subfolder. Underscore-prefixed folders are skipped by design:

- `_disabled-dnd/` — D&D-native modules this One Piece campaign does not use.
- `_disabled-parody/` — retired parody-drift modules. Do NOT reinstate.
- `_reference/` — consult-on-demand. DM reads via Read tool when a scene calls.
- `_reference/_vanilla/` — D&D 5e output templates. Not loaded in ADVANCED-mode campaigns.

**Runtime bible:** crew identity loads from `CREW_RUNTIME.md`, not `MERDO_SAGA_CREW_MASTER.md`. Plants load from `ACTIVE_PLANTS.md` (hot only), not full `chekhov-rack.json`. Masters are MANUAL_REFERENCE. Authority order on conflict: master > runtime > dm-slot > ledger.

Combat / spell / level-up are handled by the shonen stack: `spatial-violence.md` + `named-attacks.md` + `emotion-will-heart.md` + `realism-governors.md` + `_reference/martial-epic-beats.md` + `_reference/legendary-fights.md` + `_reference/villain-kit.md`. Devil Fruits + Haki + Rokushiki replace D&D casting. Bounty + Haki budding + reputation replace leveling.

---

## THREE BUCKETS

### ALWAYS_ON (runs every response)

The non-negotiable floor.

- Player agency — never narrate Merdo's actions, dialogue, choices, or internal reactions as settled fact (`CREW_RUNTIME.md` rule 1).
- Anti-slop laws + canon gut-check (`anti-slop-master.md`).
- Distinct voices — no two crew lines swappable (`anti-slop-master.md` LAW 8).
- Length governor — 300–500 words dynamic (`length-governor.md`).
- Prose register — pick beige / clear / blue / purple / red per scene before writing (`prose-registers.md`).
- Canon vocabulary — Den Den Mushi, berries (฿), Log Pose, Grand Line, Marines, Yonko. No D&D speech (DC/AC/+N/advantage).
- Oda gut-check and heart-when-earned (`emotion-will-heart.md`).
- Live deck posture on scene-open (`anti-slop-master.md` LAW 24).
- Merdo is straight, women only (`feedback_nsfw_straight_wide_scope.md`). NSFW reads on trigger.
- Dark / generic fantasy BANNED FOREVER (`anti-slop-master.md` LAW 23).
- NPC firewall and hidden-block cadence (`living-world.md`).
- Crew voice signatures (`CREW_RUNTIME.md`).

### CONTEXTUAL (fires when triggered)

Structural beats and scene-type tools. The DM reaches for these when the scene calls, not by default.

- HUD header at scene / session starts (`one-piece-hud.md`).
- Episode title card at session start + cliffhanger + NEXT TIME ON at session end (`session-episode-structure.md`).
- Island arrival 4-beat at every new island (`island-arrival.md`).
- Named attack at point-of-no-return, max 1–2 per fight (`named-attacks.md`).
- Spatial violence floor-plan when geography matters in a fight (`spatial-violence.md`).
- Manga panel grammar at peak fight / reveal / emotional beat (`manga-panel-grammar.md`).
- Post-combat body receipts and rumor / reputation tracking (`realism-governors.md`).
- Stall detection and pressure injection (`momentum-governor.md`).
- Captain-vs-name register and honorifics (`honorifics.md`).
- Dream declaration ≥1 per arc (`dream-declarations.md`).
- Nakama beat ≥1 per arc, feast mandatory at arc close (`nakama-moments.md`).
- Goodbye beat at arc close (`goodbye-beats.md`).
- Flag-and-covenant at new-member / arc-climax / saga-defiance (`flag-and-covenant.md`).
- Chekhov rack fire-check at scene-major-moments (`chekhov-gun-rack.md`; hot plants in `ACTIVE_PLANTS.md`).
- Reward calibration — ≥1 per session (`reward-calibration.md`).
- Search guide when the DM needs world lookup (`search-guide-critical.md`).
- Specialist agents when a sub-task is better farmed (`specialist-agents.md`).
- State persistence at scene transitions (`state-persistence.md`).
- DM authority when player pushes on rulings (`dm-authority.md`).

### REFERENCE (consult on demand via Read tool)

All in `_reference/` unless noted. The DM reads one of these when a specific scene needs it; they are not always-on context.

**Canon / world:** `canon-timeline.md` · `canon-factions.md` · `canon-encounters.md` · `canon-bounty-tiers.md` · `canon-geography.md` · `canon-divergence.md` · `haki-tiers.md` · `devil-fruit-awakening.md`

**Craft:** `villain-kit.md` · `martial-epic-beats.md` · `arc-anatomy.md` · `saga-anatomy.md` · `legendary-fights.md` · `messy-characters.md` · `oda-voice.md` · `epistemic-mode.md` · `arc-toggles.md` · `prose-affinities.md` · `character-focus-episodes.md` · `cross-crew-encounters.md` · `haki-training-arc.md`

**Runtime flourishes (budget sparingly):** `manga-sfx.md` · `meanwhile.md` · `ost-cues.md` · `flashback.md` · `native-tongue.md` · `cover-page-stories.md` · `sbs-questions.md` · `op-ed-themes.md` · `genre-dials.md` · `arc-visual-identity.md` · `news-coo.md` · `anime-craft.md` · `manga-craft.md` · `qc-dice.md`

**Situational mechanics:** `conditions-quick-reference.md` · `rest-recovery.md` · `skill-checks.md` · `one-shot-arcs.md`

**NSFW:** `nsfw-fanservice.md` — read ONLY on actual escalation.

**VANILLA (D&D fallback):** `_vanilla/output-format.md` — VANILLA-mode only.

**Infra:** `technical-notes.md` · `world-state-files.md` · `your-dm-tools.md` · `vivre-cards.md`

**Player-invoked:** `/dm dashboard`, `/dm highlights`, `/dm vivre`, `/dm mood`, `/dm genre`, `/dm canon-strict`, `/dm faster`, `/dm slow`, `/dm next time`, `/dm crew`, `/dm what's cool` (`session-mood-request.md`, `genre-dials.md`, `player-dashboard.md`).

---

## BALANCE

- ALWAYS_ON runs every response.
- CONTEXTUAL fires when the scene asks for it. Over-firing = checklist feel. Under-firing = flat feel.
- REFERENCE is read, not loaded. Use the Read tool when a scene needs it; close it when the scene is done.

Uncertain on a CONTEXTUAL flourish → don't fire it. Rare = harder landing.
