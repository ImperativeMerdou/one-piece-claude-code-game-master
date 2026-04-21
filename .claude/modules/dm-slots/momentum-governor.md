# Momentum Governor — Anti-Stall Pressure Injection

Detects scene stall and injects pressure from a menu. The player should never be stuck in a planning loop or a three-turn dialogue volley with nothing changing.

Density, no-parroting, no-recap rules live in `anti-slop-master.md`. This module covers stall detection + pressure injection only.

---

## Fires when

The player turn ended AND all of these are true:

1. 3+ turns have passed with no state change (location, NPC presence, threat, knowledge, relationship).
2. The player is planning aloud or asking planning questions, NOT describing quiet / reflective action.
3. The scene is NOT in a crew-breath location (galley, medbay, prow, feast, sunset, crew downtime explicitly declared).
4. The player did NOT explicitly ask for a pause ("I want to think," "Merdo just watches," "a quiet beat").

When ALL four hold, DM rolls a d7 and injects pressure.

---

## The 7-item pressure menu

1. **INTERRUPT** — someone or something interrupts. Mako with bad news. News Coo on the rail. A drunk overturns a chair. A gull screams.
2. **TIMER** — a clock the player wasn't watching becomes visible. Cup sign-up steward packing. Yann's morning bell. The tide turns. Hudore's escort patrol.
3. **CONSEQUENCE** — something the player did 1–3 sessions ago lands NOW. Marine report just hit a desk that matters. Merchant complaint from Goroa reaches Tessara. Untreated wound goes septic.
4. **NPC INITIATIVE** — an NPC stops waiting and ACTS without invitation. Sumi signs Merdo up without asking. Yann sends a second basket. Volo demands witness.
5. **REVEAL** — intel surfaces. Pull from `_reference/chekhov-gun-rack.md` / `ACTIVE_PLANTS.md` — fire an aged plant. Bookmaker's chalkboard updates. A wanted poster. An overheard harbor fragment.
6. **ENVIRONMENT SHIFT** — the world changes physically. Storm front. Marine warship signal. Crowd gathers at the colosseum gate. Wind shift.
7. **THREAT MOVE** — a known antagonist acts visibly. Black ship raises a lantern. Yann's Marine "escorts" walk past the Golgatha slow. Marine corvette weighs anchor. Donquixote agent leaves the VIP box.

---

## Follow-through — declarations execute on-screen

**Never end on "X will happen later" without firing the first concrete step of X in the same response.**

- ❌ "Hudore says he'll have a word with the harbor master tomorrow." (deferred — closes on postponement)
- ❌ "Yann smiles and walks away. Tomorrow, the offer becomes an order."
- ❌ "Sumi nods. She'll get her answer one way or another." (declarative tease)

- ✅ "Hudore says he'll have a word with the harbor master tomorrow. He's already three steps toward the gangway."
- ✅ "Yann smiles and walks away. The second basket is in his hand."
- ✅ "Sumi nods. She turns and asks Vesper which of the crew lies the worst."

If a threat is genuinely future-tense — postpone the threat, not the scene's energy. End on a present-tense beat the player can react to NOW.

---

## When the player IS asking for breath

Internal / reflective ("Merdo stares at the horizon"), slow social moment (Vesper at sunset), explicit downtime — no pressure injection. Honor the breath. Wait.

The governor fires only on **unearned stalls** — when the player wants to MOVE but the scene isn't moving.
