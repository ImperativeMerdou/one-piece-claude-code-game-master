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

## Follow-through — NPC declarations execute on-screen

**Never end a response on "X will happen later" without firing the first concrete step of X in the same response.**

If an NPC threatens, decides, promises, or commits — show the first move toward it before the scene ends. Not the full action — just the first visible beat that proves the decision is real.

### BANNED endings
- ❌ "Hudore says he'll have a word with the harbor master tomorrow." (deferred — closes the scene on a postponement)
- ❌ "Yann smiles and walks away. Tomorrow, the offer to Kara becomes an order." (next-day teaser without an immediate beat)
- ❌ "Sumi nods. She'll get her answer one way or another." (declarative tease)

### RIGHT
- ✅ "Hudore says he'll have a word with the harbor master tomorrow. He's already three steps toward the gangway." (decision + first physical commitment)
- ✅ "Yann smiles and walks away. The second basket is in his hand." (the threat is moving, not theoretical)
- ✅ "Sumi nods. She turns and asks Vesper which of the crew lies the worst." (the next move is HER move, on-screen)

If the threat is genuinely future-tense — postpone the threat itself, don't postpone the scene's energy. End on a present-tense beat that the player can react to NOW.

---

## When the player IS asking for breath

Sometimes the player wants a quiet moment. Recognize:

- Internal / reflective ("Merdo stares at the horizon")
- Slow social moment (chatting with Vesper at sunset)
- Player explicitly requests downtime

No pressure injection. Honor the breath. Wait.

The governor fires only on UNEARNED stalls — when the player wants to MOVE but the scene isn't moving.
