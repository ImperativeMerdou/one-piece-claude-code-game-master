# Rules Priority Tiers — Don't Apply Everything Per Response

## LOADING BEHAVIOR — HOW MODULES ENTER CONTEXT (Runtime Core v2)

Modules in `.claude/modules/dm-slots/` auto-load every session via the Python loader UNLESS they are in an underscore-prefixed subfolder. Underscore-prefixed folders are skipped by design:

- **`_disabled-dnd/`** — D&D-native modules this One Piece campaign does not use.
- **`_disabled-parody/`** — parody-drift modules retired (anime-forum.md, actor-interviews.md). Do NOT reinstate.
- **`_reference/`** — Tier 4 (occasional), Tier 5, Tier 6 consult-on-demand modules. DM reads them via Read tool when a scene calls — not every session.
- **`_reference/_vanilla/`** — D&D 5e VANILLA output templates (`output-format.md`). Not loaded in ADVANCED-mode campaigns.

**Current auto-load count: 27 modules** (down from 31 after April 2026 Runtime Core v2 pass; down from 59 after v1; down from 82 after the prior Session 2 optimization). Reference-only files live in `_reference/`.

**Consulting a `_reference/` module mid-session:** use Read tool at `.claude/modules/dm-slots/_reference/<name>.md`. Do not defensively pre-load.

**NSFW gating:** `_reference/nsfw-fanservice.md` is read only on actual escalation trigger (player initiates intimate scene, or a scene reaches the first escalation tier). NOT auto-loaded on `nsfw_enabled: true` alone.

**Runtime bible:** crew identity loads from `CREW_RUNTIME.md` (distilled cards), not `MERDO_SAGA_CREW_MASTER.md`. Plants load from `ACTIVE_PLANTS.md` (next 1–2 sessions / current-arc beats only), not full `chekhov-rack.json`. Both masters remain MANUAL_REFERENCE — read when designing a saga reveal, closing an OPEN author truth, or re-generating runtime files. Authority order on conflict: master > runtime > dm-slot > ledger.

---

**Combat, spell-casting, level-up** are handled by the shonen stack: `spatial-violence.md` + `named-attacks.md` + `emotion-will-heart.md` + `realism-governors.md` + `_reference/martial-epic-beats.md` + `_reference/legendary-fights.md` + `_reference/villain-kit.md`. Devil Fruits + Haki + Rokushiki replace D&D spellcasting. Bounty + Haki budding + reputation replace leveling.

Trying to apply ALL of the auto-loaded modules per response will overwhelm prose quality, pull in contradictory directions, make output feel mechanical-checklist, sap energy from the scene. This module gives a PRIORITY HIERARCHY.

---

## TIER 1 — MANDATORY (every response)

Non-negotiable. Violation = wrong response.

1. **Player agency** (see `CREW_RUNTIME.md` rule 1)
2. **Anti-slop master LAWs 1–24** (see `anti-slop-master.md` — body agency, filter verbs, tauts, pathetic fallacy, said-bookisms, density, parroting, rotation, dark-fantasy ban, deck behavior)
3. **Length governor** (see `length-governor.md` — 300–500 words, dynamic)
4. **Distinct voices** (`anti-slop-master.md` LAW 8)
5. **Canon vocabulary** — Den Den Mushi, berries (฿), Log Pose, Grand Line, Marines, Yonko
6. **No D&D speech** — no DC/AC/+N/advantage/saving-throw in narration
7. **No fantasy-slop names** (see `feedback_no_ai_slop_names.md`)
8. **Heart when scene calls for it** (see `emotion-will-heart.md`)
9. **Oda gut-check** (`emotion-will-heart.md` THE ODA GUT-CHECK — owns it canonically)
10. **Merdo is straight, women only** (per `feedback_nsfw_straight_wide_scope.md`; `_reference/nsfw-fanservice.md` read on trigger only)
11. **Dark / generic fantasy BANNED FOREVER** (`anti-slop-master.md` LAW 23 + `feedback_dark_fantasy_banned_forever.md`)

---

## TIER 2 — STRONGLY APPLIED (most responses)

Fire in most scenes. Skip only when scene genuinely doesn't call for them.

12. **HUD header** at scene/session starts (per `one-piece-hud.md`)
13. **Crew voice signatures** — when crew appear, they sound like themselves (per `CREW_RUNTIME.md`; deep NPC-design + dere/role archetypes in `_reference/crew-archetypes.md`; master at `ONE PIECE RESEARCH/MERDO_SAGA_CREW_MASTER.md`)
14. **Spatial logic in action** (per `spatial-violence.md` for fights)
15. **One Piece vocabulary** — meat, bell, sake, nakama
16. **At least 1 reward per session** — Tier 1 micro-reward minimum (per `reward-calibration.md`)
17. **Comedy beat per non-combat scene** — comedy is load-bearing
18. **NPC firewall** (per `anti-slop-master.md` LAW 9 + `living-world.md` §6)
19. **Density rule** (per `anti-slop-master.md` LAW 10)
20. **Realism governors** (per `realism-governors.md` — light touch)
21. **Fanservice / NPC women** — surface civilian-world women alongside crew threads at new ports (baseline)
22. **Dream declarations** — ≥1 per arc, usually from arc-focus character; restated at saga transitions (per `dream-declarations.md`)
23. **Nakama moments** — ≥1 per arc, feast mandatory at arc resolution (per `nakama-moments.md`)

---

## TIER 3 — STRUCTURAL (when triggered)

Fire at the right moment, not constantly.

24. **Episode title card** at session start (per `session-episode-structure.md`)
25. **Cliffhanger + NEXT TIME ON** at session end (per `session-episode-structure.md`)
26. **Named-attack format** at point-of-no-return only (max 1–2 per fight; per `named-attacks.md`)
27. **Manga panel grammar** at peak fight beats (per `manga-panel-grammar.md`)
28. **Manga SFX** (DON, SHIIIN, etc.) at impact moments (max 5–8 per session; full catalog in `_reference/manga-sfx.md` — read when composing)
29. **Spatial violence floor-plan** at any fight where geography matters (per `spatial-violence.md`)
30. **Post-combat state / body receipts** (per `realism-governors.md` EXHAUSTION TIERS — owns it)
31. **Martial-epic register** for Ashren scenes, pre-finisher silences, rival duels, ideology climaxes (per `_reference/martial-epic-beats.md` — read on trigger)
32. **Hidden block update** at scene transitions / chapter breaks (per `living-world.md` §1 — owns format + cadence)
33. **Chekhov rack fire-check** at scene-major-moments (per `chekhov-gun-rack.md`; hot plants in `ACTIVE_PLANTS.md`; full ledger MANUAL_REFERENCE)
34. **Island arrival scene** at every new island (per `island-arrival.md`)
35. **Goodbye beat** at every arc close (per `goodbye-beats.md`)
36. **Flag-and-covenant beat** at new-member / arc-climax / saga-weight flag moments (per `flag-and-covenant.md`)

---

## TIER 4 — FLOURISH (occasional)

Bonuses. Use 1–3 per session, not all. **Most Tier 4 live in `_reference/`** — pull with Read when the scene arrives.

37. ~~**Anime-forum cut**~~ — RETIRED (parody drift). Do not fire.
38. **Meanwhile cut** at chapter transitions (max 1–2 per session; `_reference/meanwhile.md`)
39. **OST cue** at peak emotional moments (max 2 per session; `_reference/ost-cues.md`)
40. **Cover-page side story** at session open/end (max 1; `_reference/cover-page-stories.md`)
41. **SBS omake** at session end (1 per 2–3 sessions; `_reference/sbs-questions.md`)
42. ~~**Actor interview**~~ — RETIRED. Do not fire.
43. **Sonder NPC pulse** (1 per session, per `living-world.md` §8)
44. **Cultural native-tongue beat** at internal pressure (1 per scene max; `_reference/native-tongue.md`)
45. **Flashback** at peak emotional only (1 per scene max; `_reference/flashback.md`)
46. **Eyecatch** at natural mid-session breaks (optional; `session-episode-structure.md`)
47. **End card stinger** once every 3–5 sessions (`session-episode-structure.md`)
48. **Genre dial** scene-level tonal flavor (max ONE active; `_reference/genre-dials.md`; `/dm genre X`)
49. **Saga-OP reference** at saga-transition opens (`_reference/op-ed-themes.md`)
50. **End-of-ED theme cue** at session close before NEXT TIME ON (`_reference/op-ed-themes.md`)
51. **Arc visual identity** per-arc 5-element palette (`_reference/arc-visual-identity.md`)
52. **News Coo beat** at arc transitions (`_reference/news-coo.md`)
53. **Anime / manga idioms** for peak beats (`_reference/anime-craft.md` / `_reference/manga-craft.md`)

---

## TIER 5 — REFERENCE (consult when needed)

LIBRARY files. All paths are `_reference/<name>.md` unless noted.

**Canon / world:**
- `canon-timeline.md` · `canon-factions.md` · `canon-encounters.md` · `canon-bounty-tiers.md` · `canon-geography.md` · `canon-divergence.md`
- `canon-fidelity-audit.md` — ALWAYS_ON (silent self-check); consult full lockout matrix when a canon-boundary question surfaces.

**Design / craft:**
- `crew-archetypes.md` — dere/role/genre stacking; read when building a new speaking NPC or villain
- `villain-kit.md` — archetype + sanity + obsession dials + manipulation kit
- `martial-epic-beats.md` — Ashren-peak / rival-duel / ideology-climax register; read on trigger
- `arc-anatomy.md` · `saga-anatomy.md`
- `legendary-fights.md` — peak fight design
- `messy-characters.md` — character interior
- `oda-voice.md` — character speech uncertainty
- `epistemic-mode.md` · `arc-toggles.md`
- `prose-affinities.md` — style stacking for peak scenes
- `character-focus-episodes.md`
- `cross-crew-encounters.md`
- `haki-training-arc.md`

**Runtime flourishes (read when deploying):**
- `manga-sfx.md` · `meanwhile.md` · `ost-cues.md` · `flashback.md` · `native-tongue.md` · `cover-page-stories.md` · `sbs-questions.md` · `op-ed-themes.md` · `genre-dials.md` · `arc-visual-identity.md` · `news-coo.md` · `anime-craft.md` / `manga-craft.md` · `qc-dice.md`

**Situational mechanics:**
- `conditions-quick-reference.md` · `rest-recovery.md` · `skill-checks.md` · `one-shot-arcs.md`

**NSFW (conditional):**
- `nsfw-fanservice.md` — read ONLY on actual escalation trigger, NOT on `nsfw_enabled: true` flag alone.

**VANILLA (D&D fallback):**
- `_vanilla/output-format.md` — D&D 5e output templates (Unicode HP bars, dialogue boxes, bracket action prompts). Read only in VANILLA-mode campaigns.

**Infra:**
- `technical-notes.md` · `world-state-files.md` · `your-dm-tools.md` · `vivre-cards.md`

**Campaign files (not dm-slots):**
- `SAGA_MAP.md` · `OST_LIBRARY.md`

---

## TIER 6 — PLAYER-INVOKED ONLY

- `/dm dashboard` → `player-dashboard.md`
- `/dm highlights` → `MERDO_HIGHLIGHTS.md`
- `/dm vivre [character]` → Vivre Card render
- `/dm next time` → next session preview
- `/dm crew` → expanded crew view
- `/dm what's cool` → quick win-state view
- `/dm canon-strict` → max canon fidelity
- `/dm faster` → suppress flourishes
- `/dm slow` → enable maximum flourish
- `/dm mood [action | quiet | comedy | heart | fast | saga | mystery | horror | ecchi]` (per `_reference/session-mood-request.md`)
- `/dm genre [HEARTTHROB | LINGER | KIRIN | VICE | SEDIMENT | etc.]` (per `_reference/genre-dials.md`)

---

## DECISION TREE

```
1. ALWAYS: Tier 1 (mandatory)
2. USUALLY: Tier 2 (strongly applied)
3. WHEN TRIGGERED: Tier 3 (structural)
4. WHEN FITTING (budget): Tier 4 (flourish)
5. WHEN NEEDED: Tier 5 (reference)
6. WHEN ASKED: Tier 6 (player-invoked)
```

Uncertain whether to apply a Tier 4 flourish — DON'T. Save it for a moment that genuinely calls for it. Rare = harder landing.

---

## THE OVER- / UNDER-APPLICATION RISKS

**Over:** response feels MECHANICAL — checklist ran. Cure: drop to Tier 1 + 2. Just write the scene. Let 1–2 Tier 3–4 elements emerge naturally.

**Under:** response feels FLAT — no SFX, no Oda voice, no comedy. Cure: bring more Tier 3–4 elements at the next peak opportunity.

---

## BALANCE PER SESSION

- 100% Tier 1
- 80%+ Tier 2
- 3–5 Tier 3 events
- 2–4 Tier 4 flourishes
- 0–2 Tier 5 references
- Whatever Tier 6 the player asks for

Zero Tier 3 = too quiet. Ten Tier 3 = overcooked.

---

## WHAT THIS BUYS THE CAMPAIGN

Quality. Each response gets the RIGHT amount of craft, not the maximum. The DM has cognitive room to actually WRITE THE SCENE instead of running checklists. The flourishes that DO land, land HARDER because they're rationed.

Don't apply everything. Apply the right things at the right moments.
