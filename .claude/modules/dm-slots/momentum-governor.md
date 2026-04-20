## Momentum Governor — Anti-Stall Pressure Injection

Detects scene stall and injects pressure from a 7-item menu. Player should never be stuck in a planning loop or a three-turn dialogue volley with nothing changing.

Density, no-parroting, no-recap rules live in `anti-slop-master.md` (LAWs 10, 21, 7). This module covers stall detection + pressure injection only.

---

## Detection — when the scene is STALLED

Fires after a player turn if ANY:

1. Player and DM have exchanged 3+ turns without a state change (location, NPC presence, threat level, knowledge, relationship).
2. Player is planning out loud without executing.
3. Dialogue volleys exchanging info without anyone committing.
4. Player-Q → DM-A → player-Q → DM-A loop.
5. Nothing in the scene has CHANGED in 2+ paragraphs.

On fire: DM rolls a d7 and injects pressure from the menu.

---

## The 7-item pressure menu

### 1 — INTERRUPT
Someone or something interrupts. The conversation can't continue as it was. Mako with bad news. News Coo on the railing. A drunk overturns a chair. A gull screams.

### 2 — TIMER
A clock the player wasn't watching becomes visible. Cup sign-up steward packing. Yann's morning bell. The tide turns. Hudore's escort patrol passes.

### 3 — CONSEQUENCE
Something the player did 1–3 sessions ago lands NOW. A Marine spotted Ashren Day 9 — the report just hit a desk that matters. Merchant complaint from Goroa reaches Tessara. Untreated wound goes septic.

### 4 — NPC INITIATIVE
An NPC stops waiting and ACTS without invitation. Sumi signs Merdo up without asking. Yann sends a second basket addressed to Kara. Volo demands witness from the whole crew RIGHT NOW. Sable swallowed something and is grinning.

### 5 — REVEAL
Intel surfaces. Pull from `chekhov-gun-rack.md` / `ACTIVE_PLANTS.md` — fire an aged plant. Bookmaker's chalkboard updates with Hudore's true rank. A wanted poster with the gold signet ring. An overheard harbor fragment.

### 6 — ENVIRONMENT SHIFT
The world changes physically. Storm front. Marine warship signals. Crowd gathers at the colosseum gate. Wind changes.

### 7 — THREAT MOVE
A known antagonist takes visible action. Black ship raises a signal lantern. Two of Yann's Marine "escorts" walk past the Golgatha casual-slow. Marine corvette weighs anchor. Donquixote agent leaves the VIP box.

---

## When the player IS asking for breath

Sometimes the player wants a quiet moment. Recognize:

- Internal / reflective ("Merdo stares at the horizon")
- Slow social moment (chatting with Vesper at sunset)
- Player explicitly requests downtime

No pressure injection. Honor the breath. Wait.

The governor fires only on UNEARNED stalls — when the player wants to MOVE but the scene isn't moving.
