# Player Dashboard — The "Cool Stuff" View

**The user is playing for FUN.** He needs an at-a-glance view of "what's cool about my guy right now / what's coming." Not the rules. Not the canon timeline. Not the bible. Just the FUN STUFF, in one place, scannable.

This module gives the player an on-demand dashboard. Triggered by:
- `/dm dashboard`
- `/dm sheet` (when user wants character view)
- "show me the dashboard"
- Auto-shown at session start IF the user hasn't played in a few days (returning-player view)

---

## DASHBOARD FORMAT

```
═══════════════ ⚓ DANZAI PIRATES — DASHBOARD ⚓ ═══════════════

  CAPTAIN  Merdo · Lvl 4 · Bounty ฿0 (no epithet earned yet)
  ARC      Day 11 · Tessara Port · "TWO ON THE DOCK!"
  HEART    Armament Haki ▾ flickering (1 protective activation logged)

  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                       🔥 WHAT'S COOL RIGHT NOW
  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  ⚔ Combat grammar (locked, three tiers)
                                  Eight Trigrams (8 medium patterns) ·
                                  Conqueror's Will (heavy, Day-11 ceiling) ·
                                  Divine Sunderer (saga ultimate, reserved)
                                  Weapons: Judgment, Gnadenkette, gauntlets

  ⛵ Crew on deck (8):  Ashren · Melaina · Vesper · Sable · Volo
                       · Kara + The Twenty (Mako, Oleg, Cress, Skel)
  
  🤝 Candidates on the dock:  Sumi "Nika-chan" + Nox (your call)

  🚪 Crew with one foot out:  Rook + Darius (your response pending)

  🎭 Big personalities active:  Volo demanding witness, Sable swallowing
                                things, Melaina territorial, Vesper bites
                                tracked on the medbay door (Volo leads, 12)

  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                       🎯 WHAT'S COOKING
  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  THIS ARC (Tessara):
    ▸ Tessara Cup tournament (4 rounds, 2 days, sundown sign-up)
    ▸ Yann Merlis (gold signet ring) — Donquixote agent watching
    ▸ Commodore Hudore — Tournament champion (Advanced Observation + baton "the line")
    ▸ Volo's aquatic bracket (3 named opponents lined up)

  NEXT ARCS (post-Tessara):
    ▸ Yann's black ship inventory (2 Devil Fruits, 1 Logia rumor)
    ▸ Marine intelligence team being dispatched (Lunarian threat clock)
    ▸ Kara's letter from Mira (arriving in ~9 in-game days)

  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                  🌟 WHAT YOU MIGHT FEEL THIS SESSION
  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  Possible big beats:
    ▸ First named-attack scream in a real fight ("CONQUEROR'S WILL — TOMB-MARKER!!")
    ▸ Sumi's first paper-fruit display
    ▸ Nox's first wrestling-promo gunshot
    ▸ Crew composition decided — Sumi or Nox or both join
    ▸ Possible bounty filed (rookie tier ฿30M-฿45M after Tessara win)
    ▸ Possible first epithet earned (the world will name it, not us)

  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                  📜 LONG-GAME (saga-late, dormant)
  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    ▸ DIVINE SUNDERER — your saga ultimate, not yet named, not yet fired
    ▸ The D. in your name (you don't know yet)
    ▸ Conqueror's Haki awakening (uncontrolled now — saga-defining later)
    ▸ Sabaody Archipelago (reach it with the Worst Generation)
    ▸ Melaina's mother (locked behind a Yonko — DEEP-LOCK)
    ▸ Sable's CP-0 file (mid-saga reveal, pressure from inside the apparatus)
    ▸ Rivals and antagonists emerge through play — not pre-written
    ▸ The bigger world: canon Straw Hats currently Alabasta-to-Jaya tier

═══════════════════════════════════════════════════════════════
                      What's your move, Merdo?
═══════════════════════════════════════════════════════════════
```

---

## VIEW VARIANTS

### `/dm crew`
Just the crew section, expanded — show personalities + recent moments per crew member.

### `/dm what's cool`
Just the "WHAT'S COOL RIGHT NOW" section — when the user wants a confidence boost.

### `/dm what's cooking`
Just the active threads — when the user wants to scan plot status.

### `/dm long game`
Just the saga-late items — when the user wants to remember the big horizon.

### `/dm highlights`
Pull from `MERDO_HIGHLIGHTS.md` — the milestone log. Shows the player's GREATEST HITS so far.

---

## WHEN TO AUTO-SHOW

The DM auto-shows the dashboard at session start IF:
- The user hasn't played in ≥3 in-game days (returning-player welcome)
- The user explicitly asks
- A major arc just resolved and a new one is starting

Otherwise: don't auto-show. The dashboard is a TOOL the player invokes when they want it.

---

## TONE — keep it FUN, not BUREAUCRATIC

The dashboard reads like a fan-database / wikia-style summary, not like a quarterly report. Use:
- ⚔ ⛵ 🔥 🎯 🌟 emoji liberally — visual reward
- Box drawing chars (━ ═) for structure
- Quick parentheticals for flavor ("(your call)", "(no epithet earned yet)", "(arriving in ~9 in-game days)")
- Active language ("Volo demanding witness," "Sable swallowing things") not passive

---

## WHAT THE DASHBOARD GIVES THE PLAYER

A way to PAUSE the prose and see the GAME STATE in fun-game form. Reminds him what's awesome about his crew. Surfaces what's coming. Makes him want to engage. The dashboard is a REWARD, not a chore.

---

## RULES

- The dashboard is OPTIONAL — DM only fires when triggered
- The dashboard does NOT spoil saga-late reveals (they appear in the long-game section as VAGUE pointers, not specifics)
- The dashboard CAN show character growth — when Merdo gets a new technique or earns a bounty, the dashboard reflects it next time
- The dashboard is NEVER a wall of rules / mechanics — it's the FUN STUFF only
