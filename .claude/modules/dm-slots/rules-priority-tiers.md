# Rules Priority Tiers — Don't Apply Everything Per Response

## LOADING BEHAVIOR — HOW MODULES ENTER CONTEXT (Runtime Core v2)

Modules in `.claude/modules/dm-slots/` auto-load every session via the Python loader UNLESS they are in an underscore-prefixed subfolder. Underscore-prefixed folders are skipped by design:

- `_disabled-dnd/` — D&D-native modules this One Piece campaign does not use.
- `_disabled-parody/` — retired parody-drift modules (anime-forum.md, actor-interviews.md). Do NOT reinstate.
- `_reference/` — Tier 4/5/6 consult-on-demand. DM reads via Read tool when a scene calls.
- `_reference/_vanilla/` — D&D 5e output templates (`output-format.md`). Not loaded in ADVANCED-mode campaigns.

**Current auto-load: 27 modules** (down from 31 after April 2026 Runtime Core v2; down from 59 after v1; down from 82 after the prior Session 2 pass).

**NSFW gating:** `_reference/nsfw-fanservice.md` reads only on actual escalation trigger — NOT on `nsfw_enabled: true` alone.

**Runtime bible:** crew identity loads from `CREW_RUNTIME.md`, not `MERDO_SAGA_CREW_MASTER.md`. Plants load from `ACTIVE_PLANTS.md` (next 1–2 sessions / current arc only), not full `chekhov-rack.json`. Masters are MANUAL_REFERENCE. Authority order on conflict: master > runtime > dm-slot > ledger.

Combat / spell / level-up are handled by the shonen stack: `spatial-violence.md` + `named-attacks.md` + `emotion-will-heart.md` + `realism-governors.md` + `_reference/martial-epic-beats.md` + `_reference/legendary-fights.md` + `_reference/villain-kit.md`. Devil Fruits + Haki + Rokushiki replace D&D casting. Bounty + Haki budding + reputation replace leveling.

Applying ALL modules per response overwhelms prose quality. This module gives the priority hierarchy.

---

## TIER 1 — MANDATORY (every response)

1. **Player agency** (see `CREW_RUNTIME.md` rule 1)
2. **Anti-slop master LAWs 1–24** (`anti-slop-master.md`)
3. **Length governor** — 300–500 words dynamic (`length-governor.md`)
4. **Distinct voices** (`anti-slop-master.md` LAW 8)
5. **Canon vocabulary** — Den Den Mushi, berries (฿), Log Pose, Grand Line, Marines, Yonko
6. **No D&D speech** — no DC/AC/+N/advantage/saving-throw in narration
7. **No fantasy-slop names** (`feedback_no_ai_slop_names.md`)
8. **Heart when scene calls for it** (`emotion-will-heart.md`)
9. **Oda gut-check** (`emotion-will-heart.md` owns it canonically)
10. **Merdo is straight, women only** (`feedback_nsfw_straight_wide_scope.md`; NSFW read on trigger)
11. **Dark / generic fantasy BANNED FOREVER** (`anti-slop-master.md` LAW 23 + `feedback_dark_fantasy_banned_forever.md`)

---

## TIER 2 — STRONGLY APPLIED (most responses)

12. **HUD header** at scene/session starts (`one-piece-hud.md`)
13. **Crew voice signatures** (`CREW_RUNTIME.md`; dere/role archetypes in `_reference/crew-archetypes.md`; master at `ONE PIECE RESEARCH/MERDO_SAGA_CREW_MASTER.md`)
14. **Spatial logic in action** (`spatial-violence.md`)
15. **One Piece vocabulary** — meat, bell, sake, nakama
16. **≥1 reward per session** (`reward-calibration.md`)
17. **Comedy beat per non-combat scene**
18. **NPC firewall** (`living-world.md` §6 owns it)
19. **Density rule** (`anti-slop-master.md` LAW 10)
20. **Realism governors** light-touch (`realism-governors.md`)
21. **Captain-vs-name register** (`honorifics.md` owns it canonically)
22. **Fanservice / NPC women** — surface civilian-world women at new ports
23. **Dream declarations** — ≥1 per arc (`dream-declarations.md`)
24. **Nakama moments** — ≥1 per arc, feast mandatory at arc resolution (`nakama-moments.md`)

---

## TIER 3 — STRUCTURAL (when triggered)

25. **Episode title card** at session start (`session-episode-structure.md`)
26. **Cliffhanger + NEXT TIME ON** at session end (`session-episode-structure.md`)
27. **Named-attack format** at point-of-no-return (`named-attacks.md`)
28. **Manga panel grammar** at peak fight beats (`manga-panel-grammar.md`)
29. **Manga SFX** at impact moments (`_reference/manga-sfx.md`, max 5–8/session)
30. **Spatial violence floor-plan** at any fight where geography matters
31. **Post-combat body receipts** (`realism-governors.md` EXHAUSTION TIERS owns it)
32. **Martial-epic register** for Ashren / rival duels / pre-finisher silences (`_reference/martial-epic-beats.md`, on trigger)
33. **Hidden block update** at scene transitions (`living-world.md` §1 owns format + cadence)
34. **Chekhov rack fire-check** at scene-major-moments (`chekhov-gun-rack.md`; hot plants in `ACTIVE_PLANTS.md`)
35. **Island arrival scene** at every new island (`island-arrival.md`)
36. **Goodbye beat** at every arc close (`goodbye-beats.md`)
37. **Flag-and-covenant** at new-member / arc-climax / saga-defiance (`flag-and-covenant.md`)

---

## TIER 4 — FLOURISH (occasional, 1–3 per session — MOST live in `_reference/`)

- ~~Anime-forum cut~~ — RETIRED
- **Meanwhile cut** (`_reference/meanwhile.md`, max 1–2)
- **OST cue** (`_reference/ost-cues.md`, max 2)
- **Cover-page side story** (`_reference/cover-page-stories.md`, max 1)
- **SBS omake** (`_reference/sbs-questions.md`, 1 per 2–3 sessions)
- ~~Actor interview~~ — RETIRED
- **Sonder NPC pulse** (`living-world.md` §8, 1 per session)
- **Native-tongue beat** (`_reference/native-tongue.md`, 1 per scene max)
- **Flashback** at peak emotional only (`_reference/flashback.md`, 1 per scene max)
- **Eyecatch** at mid-session break (`session-episode-structure.md`, optional)
- **End card stinger** (`session-episode-structure.md`, 1 per 3–5 sessions)
- **Genre dial** scene-level (`_reference/genre-dials.md`, max ONE active)
- **Saga-OP reference** at saga transitions (`_reference/op-ed-themes.md`)
- **End-of-ED theme cue** at session close (`_reference/op-ed-themes.md`)
- **Arc visual identity** 5-element palette (`_reference/arc-visual-identity.md`)
- **News Coo beat** at arc transitions (`_reference/news-coo.md`)
- **Anime / manga idioms** for peak beats (`_reference/anime-craft.md` / `manga-craft.md`)

---

## TIER 5 — REFERENCE (consult when needed)

All in `_reference/` unless noted.

**Canon / world:** `canon-timeline.md` · `canon-factions.md` · `canon-encounters.md` · `canon-bounty-tiers.md` · `canon-geography.md` · `canon-divergence.md`

**Design / craft:** `crew-archetypes.md` (dere/role/genre stacking) · `villain-kit.md` · `martial-epic-beats.md` · `arc-anatomy.md` · `saga-anatomy.md` · `legendary-fights.md` · `messy-characters.md` · `oda-voice.md` · `epistemic-mode.md` · `arc-toggles.md` · `prose-affinities.md` · `character-focus-episodes.md` · `cross-crew-encounters.md` · `haki-training-arc.md`

**Runtime flourishes:** `manga-sfx.md` · `meanwhile.md` · `ost-cues.md` · `flashback.md` · `native-tongue.md` · `cover-page-stories.md` · `sbs-questions.md` · `op-ed-themes.md` · `genre-dials.md` · `arc-visual-identity.md` · `news-coo.md` · `anime-craft.md` / `manga-craft.md` · `qc-dice.md`

**Situational mechanics:** `conditions-quick-reference.md` · `rest-recovery.md` · `skill-checks.md` · `one-shot-arcs.md`

**NSFW (conditional):** `nsfw-fanservice.md` — read ONLY on actual escalation.

**VANILLA (D&D fallback):** `_vanilla/output-format.md` — VANILLA-mode only.

**Infra:** `technical-notes.md` · `world-state-files.md` · `your-dm-tools.md` · `vivre-cards.md`

**Campaign files:** `SAGA_MAP.md` · `OST_LIBRARY.md`

---

## TIER 6 — PLAYER-INVOKED ONLY

- `/dm dashboard` → `player-dashboard.md`
- `/dm highlights` → `MERDO_HIGHLIGHTS.md`
- `/dm vivre [character]`
- `/dm next time`
- `/dm crew`
- `/dm what's cool`
- `/dm canon-strict` · `/dm faster` · `/dm slow`
- `/dm mood [action | quiet | comedy | heart | fast | saga | mystery | horror | ecchi]` (`_reference/session-mood-request.md`)
- `/dm genre [HEARTTHROB | LINGER | KIRIN | VICE | SEDIMENT | ...]` (`_reference/genre-dials.md`)

---

## DECISION TREE

```
1. ALWAYS:     Tier 1 (mandatory)
2. USUALLY:    Tier 2 (strongly applied)
3. TRIGGERED:  Tier 3 (structural)
4. BUDGETED:   Tier 4 (flourish, 1–3 per session)
5. ON DEMAND:  Tier 5 (reference)
6. ON REQUEST: Tier 6 (player-invoked)
```

Uncertain on a Tier 4 flourish → DON'T. Rare = harder landing.

---

## BALANCE PER SESSION

- 100% Tier 1
- 80%+ Tier 2
- 3–5 Tier 3 events
- 2–4 Tier 4 flourishes
- 0–2 Tier 5 consults
- Whatever Tier 6 the player asks for

Zero Tier 3 = too quiet. Ten Tier 3 = overcooked.

**Over-application** (checklist-feel) → drop to Tier 1 + 2, just write the scene.
**Under-application** (flat-feel) → bring more Tier 3–4 at the next peak.
