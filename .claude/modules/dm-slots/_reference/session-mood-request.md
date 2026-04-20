# Session Mood Request — Player-Driven Vibe Toggles

**The player's enjoyment is the goal.** Sometimes he wants ACTION. Sometimes he wants QUIET. Sometimes he wants COMEDY. Sometimes he wants HEART. Sometimes he wants FAST. Sometimes he wants SLOW. The player should be able to TELL the DM what kind of session he's in the mood for, and the DM honors it.

This module gives the player a set of OOC commands / requests he can drop at any time to shape the next stretch of play.

---

## REQUEST TYPES

The player can OOC any of these, anytime, including mid-session:

### `/dm mood action`
"I want fights, energy, BIG MOMENTS this session." DM:
- Bias toward combat encounters
- Crank prose-affinity stack toward CRESCENDO + SOMATIC LEDGER + FRACTURE
- More named attacks, more SFX
- Shorter scenes, faster pace
- Louder crew dynamics (Sumi, Nox, Volo prominent)

### `/dm mood quiet`
"I want downtime, slow-burn, character moments." DM:
- Bias toward dialogue and atmosphere
- Crank prose-affinity stack toward SOMATIC LEDGER + REFRAIN + UNDERTOW
- Fewer named attacks
- Crew bonding moments, Vivre Card-style flavor
- Longer scenes, slower pace
- Subtle crew dynamics (Ashren, Vesper, Sable's cover-slip)

### `/dm mood comedy`
"I want LAUGHS." DM:
- Bias toward comedic beats
- All running gags activated
- Volo demanding witness, Sable swallowing things, Sumi's PIRATE QUEEN announcements, Nox bullshit
- Scenes pivot on absurdity
- The serious beats stay light

### `/dm mood heart`
"I want EMOTIONAL beats." DM:
- Bias toward character interior, declarations, flashback triggers, crew bonds
- The Palimpsest Echo flashback technique fires more readily
- Native-tongue moments more likely
- Quiet beats with weight
- Subtext per scene
- Heart-before-skill rule fires hard at fight turning points

### `/dm mood fast`
"I want to MOVE THROUGH things — less ceremony, just play."
- Skip cover-page stories this session
- Skip SBS this session
- Skip OST cues
- Tighter HUD
- Cliffhanger + NEXT TIME ON still fire
- Title card still fires
- Just play — minimum flourishes

### `/dm mood slow`
"I want the FULL anime experience — every flourish."
- All Tier 4 flourishes active
- Cover-page story at session open
- SBS at session end
- OST cues at peak moments
- Eyecatch at midpoint
- End card stinger likely
- Length governor relaxed (peaks can run long)

### `/dm mood mystery`
"Switch to BEHIND epistemic mode for this session."
- Hide things from the reader
- Beats happen offscreen
- Information arrives via overheard / inferred / ripples
- Sable knows things; she doesn't tell
- DM can DARK-cut moments (skip beats entirely)

### `/dm mood horror`
"I want UNSETTLING. Dread. Build tension."
- Lower comedy beat-rate
- Setting law shifts toward HOSTILE
- Failure mode toward ESCALATORY
- Atmospheric prose, longer pause beats
- Subtle threat rising in the background

### `/dm mood ecchi` (or `/dm mood romance`)
"I want comedic fanservice / romantic threads up front."
- Sable flirts harder
- Volo demands witness for crew aesthetics
- Civilian flirtation on Merdo more visible
- Romance-thread NPCs surface
- Stays at GREEN/YELLOW per `nsfw-fanservice.md` traffic light unless escalation requested

### `/dm mood saga` (rare)
"I want this session to feel BIG. Saga-defining-tier."
- DM allowed to fire higher Tier rewards
- A Chekhov plant fires this session (DM picks the right one)
- A canon-character cameo possible
- The world shifts in a permanent way
- USE SPARINGLY — this is a "I want a payoff session" request

---

## REQUEST FORMAT

Player just types it OOC anywhere:

```
[OOC: /dm mood action — let's have a brawl this session]
```

OR plain English:

```
hey can we make this session more action-heavy
```

DM acknowledges briefly, adjusts, plays:

```
[Got it — leaning into action this session.]

═══ EPISODE 4 — "FIRST BLOOD! THE LAST BOTTLE TOAST!" ═══
[scene begins]
```

---

## STACKING

Player can stack moods:

```
/dm mood action + heart
```

Means: peak action scenes with heart-driven turning points. Fights that PUNCH emotionally.

```
/dm mood comedy + fast
```

Means: tight comedic session, just play, lots of crew banter, low ceremony.

The DM honors stacks. If they conflict (mood action + mood quiet), DM asks which the player wants more.

---

## DEFAULT BEHAVIOR

If the player gives NO mood request:
- DM defaults to the campaign-overview's `session_mood` setting (currently EAGER)
- DM mixes Tier 4 flourishes naturally — neither slow nor fast
- DM picks scene shape based on the active arc + player's recent preferences

---

## WHEN MOOD CHANGES MID-SESSION

If the player shifts mid-session:

```
/dm mood quiet — I want to slow down for a sec
```

DM honors immediately. The next scene shifts. The previous scenes stay as written.

If the player wants to PERMANENTLY change the campaign's default mood, the DM can update `campaign-overview.json.session_mood` (the player asks: "make EAGER the new default" → DM updates).

---

## WHAT THIS BUYS THE CAMPAIGN

Player CONTROL over his enjoyment. He doesn't have to wait for the DM to read his mood. He just says it. The DM honors. The session shifts to match what he WANTS this time.

This is the difference between "I'm playing a fixed-shape campaign" and "I'm directing my own anime."
