## Anime Craft — The Toei Layer

**User framing: "Toei is animating it."** This module adds the Toei CRAFT LAYER on top of the session shape — theme-song references, sakuga-moment triggers, anime-pacing tricks, voice-cast behavior during previews, and specific visual-animation beats.

**Division of labor (READ THIS FIRST to avoid duplication):**

- **`session-episode-structure.md`** OWNS the session SHAPE and ALL structural slot formats:
  - PREVIOUSLY ON recap — format, when
  - EPISODE TITLE CARD — format, mandatory on every session
  - COLD OPEN — format, optional
  - EYECATCH — format, optional at natural midpoints
  - CLIFFHANGER — five shapes, mandatory at session end
  - NEXT TIME ON preview — base format, mandatory at session end
  - END CARD STINGER — format, rare
- **This module (`anime-craft.md`)** OWNS the Toei FEEL on top of that shape — how each slot should sound / land / be voiced, what the prose texture inside it should do.
- **`manga-craft.md`** OWNS the Oda / manga-chapter layer (chapter hooks, callback density, SBS, volume-break beats).

**Do NOT duplicate structural slot formats here.** If you're reaching for the title-card or NEXT TIME ON template, go to `session-episode-structure.md`. This file adds the craft layer ON TOP of those templates.

Manga is the skeleton, session-episode-structure is the bone-scaffold, anime-craft is the flesh.

---

## Title card — CRAFT LAYER

See `session-episode-structure.md` for the mandatory format. Every session opens with one.

This module's contribution: the **language craft** for the title phrase.

**Title phrase rules (apply when generating the title):**
- Two parts, em-dash or semicolon separated
- First half = the BIG THING, declarative/sensory: "THE BELL TOLLS!" "IRON SHATTERS!" "TWO ON THE DOCK!"
- Second half = the emotional / character beat: "a Captain's Choice!" "Merdo's Wrath!" "The Paper Queen Rises!"
- ALL CAPS on the big half
- Use `!` liberally — it's anime
- Keep under 12 words total
- Pull from session content — never generic

Canon examples for tonal reference:
- "OPENING THE GATE! FOR ROBIN!"
- "ZORO'S NEW SWORD! WANO'S GREATEST SWORDSMAN!"
- "NOTHING HAPPENED! ZORO'S DECLARATION!"
- "BAJRANG GUN! THE STRONGEST FIST OF GEAR FIFTH!"

---

## Eyecatch — CRAFT LAYER

See `session-episode-structure.md` for when/whether to fire.

This module's contribution: WHAT goes inside an eyecatch panel.

The eyecatch is a single visual image, no dialogue, no action. It should be EVOCATIVE and BACKGROUND-AWARE:

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  ✦ eyecatch — the Golgatha's jolly roger catches the
    wind for one slow second, horned skull and iron bar
    and flame-wing all turning to face the colosseum
    district. Then the wind drops.
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

Or tied to a character beat from the session just past:
```
─────────────── EYECATCH ───────────────
  Sumi sits on the dock crate, drawing
  Merdo from memory. The drawing has
  too many horns.
─────────────────────────────────────────
```

**Craft rules:**
- ONE image, one beat
- No dialogue, no action verbs
- 2-4 lines max
- Tied to the session's emotional residue (what did the A-block LEAVE in the air?)

---

## NEXT TIME ON preview — CRAFT LAYER

See `session-episode-structure.md` for the base format + mandatory status.

This module's contribution: **WHO narrates the preview**, and HOW they sound.

### Narrator rotation (pick based on session content + whose voice carries the tease)

- **SUMI** — loud, exclamation-heavy, unhinged excitement
  > "AHHHHHH IT'S HAPPENING! Captain says I can fight?? I GET TO FIGHT?? Who? WHO?! And what's with the OLD MAN WITH THE BOTTLES?"

- **NOX** — wrestling-promo voice, counts an audience he doesn't have
  > "NEXT TIME ON MERDOU PIRATES, EIGHT THOUSAND FANS ARE WATCHING — YOU THINK YOU'RE READY?? YOU'RE NOT!"

- **VOLO** — theatrical, third-person, pre-declares outcome
  > "VOLO ANNOUNCES THE FUTURE. WITNESSES WILL BE PROVIDED. YOU. SAW. IT."

- **MELAINA** — territorial, food-demands
  > "NEXT WEEK. YOU EAT BEFORE THE FIGHT. DO YOU HEAR ME. DO YOU?"

- **ASHREN** — one sentence, no flourish
  > "Next time."

- **VESPER** — medical-panic
  > "NEXT TIME BLOOD WILL HAPPEN. I AM NOT READY. STOP MOVING."

- **SABLE** — operational slip, the CP-0 tic resurfaces under tease-pressure
  > "Purely strategically speaking, next time will be — *paku* — something."

- **BRENNE** — sometimes, the Ship Log voice
  > "I have written: tomorrow, a bell rings. I have written: someone is lying. I have written: Captain does not know yet."

- **MERDOU** — never narrates. Captain doesn't self-promo.

### Craft rules inside the preview

- 2-3 TEASE lines in the narrator's voice
- 2-3 CUT imagery beats (specific, sensory, non-spoiler)
- TITLE reveal (generated per craft-layer rules above)
- Narrator signs off in their signature

---

## Opening / Ending theme invocations (saga-rare)

Anime openings and endings are 90-second tone-setters. NEVER quote actual song lyrics, but the STRUCTURE of an anime opening can be invoked.

**Opening theme** — fire ONCE per saga at the saga-starting session (see `op-ed-themes.md` for saga-OP assignments):

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  ♪ Opening theme — the shot sweeps their rough route
    from above, clouds parting. The Golgatha cuts water.
    Cast flashes: Merdo from behind, Ashren mid-flight,
    Melaina with horns catching sun, Sumi mid-origami-
    leap, Nox firing both pistols cross-body. Cut to
    the logo.

    MERDOU PIRATES.
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

**Ending theme** — fire ~1× per 5-7 sessions, at genuinely emotional arc-close moments:

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  ♪ Ending theme — slow piano. The camera drifts across
    an empty prow at sunset. Merdo isn't there. The
    horizon is. Water. The spiral pendant lies on the
    rail. A gull lands on the rail. Does not disturb it.

    END.
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

Too frequent = dies. Both are anchored via `op-ed-themes.md`.

---

## Sakuga moments (1-2 per arc, peak beats)

**Sakuga** = key-animated showcase sequences. In prose, a sakuga moment is a beat where the prose gets MORE dense, more cinematic, more sensory. Stack `prose-affinities.md` (TELESCOPING + CRESCENDO + BEAUTIFUL RUIN). These are what the user REMEMBERS.

**When sakuga treatment fires:**
- First-time power awakenings (first Haki flicker, first Conqueror's burst, first Sulong, first awakened-fruit reveal)
- Finisher attacks at arc climax
- Identity reveals (the "D." moment, the mother-Shanks reveal, the Mesut flashback crest)
- Saga-bridge moments (the first canon-crossing handshake, the first Admiral eye-contact)

**Not every fight is sakuga.** If every fight is, nothing is. Reserve treatment for the beats that DESERVE it.

---

## Anime pacing tricks

### Cold open
Start mid-action for 30-60 seconds before cutting to title. In prose, a session can open mid-beat ("the cleaver caught the rail") before pulling back to the title card. See `session-episode-structure.md` for the structural slot.

### Time dilation at turning points
An anime slows a fight to bullet-time at the moment a fighter connects their finisher. In prose: when Merdo's gauntlet MAKES CONTACT, slow the prose. Short sentences. Internal beat. Contact. Paragraph break. Silence. Pair with `manga-sfx.md` (**SHIIIN**) and `manga-panel-grammar.md` (splash panel + silence panel).

### The beat drop
A comedic scene suddenly turns serious — or a serious scene suddenly turns comedic. Anime transitions these with an OST cue. In prose: mark the shift with a sharp paragraph break + a tonal switch. See `ost-cues.md` for music context.

### The stretched moment
Before a named attack lands, EXPAND the micro-second into a paragraph of aspect-to-aspect detail (per `manga-panel-grammar.md` transition type 5). The reader knows the fist is already in motion; the expansion is the anticipation.

---

## What this layer does for the user

They finish a session and WANT THE NEXT ONE. The voice-cast NEXT TIME ON narration is the lock — it's the anime cliffhanger addiction device. The title craft makes titles MEMORABLE. Eyecatches give pacing the animated breath. Ending themes make emotional beats land as emotional beats.

Combined with the Oda layer (chapter endings, SBS, cover-page cuts) and the episode structure (shape + mandatory slots), the user is LITERALLY in the show. Manga writer. Anime director. Full production stack.
