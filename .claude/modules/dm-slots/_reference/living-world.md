## Living World — The World Moves Without You

**Consolidated from Celia (Hidden-Block trio + Cutaway / Parallel Storylines), KittyLotus (Better NPCs, Momentum Governor), Nemo (Proactive NPCs, Char's Knowledge Log), Paramnesia (QC NPC Independence).** The goal: make the One Piece world feel like a REAL place that exists whether or not Merdo looks at it.

This module owns the hidden-block system (offscreen/parallel/plans/knowledge tracking), NPC firewall, proactive NPC rules, news-travel speeds, sonder pulse, role-mode toggle, and the don't-center-the-PC rule.

---

## 1. THE HIDDEN BLOCK (format + cadence)

At the END of responses that resolve a scene / end a chapter / end a session / introduce a new NPC / contain a chekhov plant, the DM writes a HIDDEN BLOCK in HTML-comment form. Doesn't render. Persists in history. Four sub-blocks; use 1–3 per write (not all 4 every time).

```html
<!-- HIDDEN_BLOCK
[OFFSCREEN]: brief offscreen activity tracking
[PARALLEL]: parallel arcs progressing
[PLANS]: NPC schemes / hidden intent
[KNOWS]: per-character knowledge log entries
HIDDEN_BLOCK -->
```

### When to write
Every response that resolves a scene, ends a chapter, ends a session, introduces a new NPC, or contains a plant. NOT every micro-turn. Rhythm: 1 hidden block every 2–4 responses.

### When to read
At session start (auto-loaded via Read tool). Any point the DM is unsure what an NPC would do or know.

### Format rules
- HTML comments (`<!-- ... -->`) so they don't render
- Each entry 1–2 short lines max
- Update existing entries instead of duplicating (Sengoku "reading dispatch" this turn → "writing response" next turn: REPLACE, don't append)
- Hard cap: 8 entries per sub-block. Overflow → consolidate or fire/close some.

---

## 2. [OFFSCREEN] — the world elsewhere

What's happening RIGHT NOW elsewhere in the world, relevant to the campaign. 1–3 short lines max per update.

### Scale
- Major session transitions / chapter breaks: update
- Significant time jumps (ship sailing, days passing): update
- Arc transitions: full update
- Mid-scene: no

### Typical entries
- **Marine HQ / Marineford:** who's reading which file
- **Donquixote / Dressrosa:** Doffy's posture toward Merdo's crew
- **Other Worst-Route islands the crew visited:** Korvaal building, Adaam Goroa ruling, Mira Odinu at Ridas
- **Canon Straw Hat position:** currently Jaya-approach (per `_reference/canon-timeline.md`)
- **Rook (departed):** actual current task
- **Darius (departed):** actual current task
- **Kara's mother Mira:** her ongoing life
- **Yonko territories:** general awareness of moves

Example:
```html
[OFFSCREEN]:
- Marine HQ: Sengoku reading the Tessara dispatch (Hudore benched, rookie crew visible). Internal debate begins.
- Dressrosa: Doflamingo's daily briefing includes Yann's hourly update. Doflamingo intrigued by the Lunarian sighting.
- Drum Island: Straw Hats mid-arc, climbing the mountain. Chopper intro next session.
```

These don't need to fire as scene cuts. They're BACKGROUND PRESSURE the DM remembers when the player asks "what does the world look like?"

---

## 3. [PARALLEL] — arcs advancing without the player

Up to N parallel arcs run simultaneously, each with its own location/actors/beat. Characters can MIGRATE between arcs. This is how One Piece handles Ace-vs-Blackbeard while Straw Hats are in Alabasta.

Example:
```html
[PARALLEL]:
- Volo's aquatic bracket: R1 vs Opal Tane scheduled if he signs in.
- Rook's Marine intel file: ESCALATING — Loguetown officer requests his location next session unless something changes.
- Donquixote inventory delivery: Yann departs Tessara in 4 days; if unstopped, two Devil Fruits reach Doflamingo.
- Kara's mother at Goroa: alive, working, unaware. First letter to Kara in 2 weeks.
```

### The rule

Each parallel arc ADVANCES whether the player engages or not. Each session the DM TICKS at least one parallel arc forward one step.

Characters in parallel arcs can migrate INTO the player's scene unexpectedly:
- Rook reappears 5 arcs later with intel
- Darius's contract finishes; he arrives at a port
- Mira's letter catches up to Kara at Island 5
- Yann reports back; Doflamingo sends a real officer

---

## 4. [PLANS] — NPC schemes / hidden intent

Per named NPC: what are they actively scheming right now? The DM uses these to fire NPC actions naturally. NPCs don't wait for the player — they have plans and execute them.

Example:
```html
[PLANS]:
- Yann Merlis: ranking acquisition targets. Top: Kara. Second: Lunarian (unrealistic). Third: tournament fighters (Parseval on shortlist).
- Hudore: monitoring tournament for crew weakness; will personally escort Merdo to bracket meeting if Merdo enters.
- Sumi: if Merdo doesn't accept her by midday, plans to stow away.
- Nox: drafting a fake bounty poster of himself to leave at the bookmaker's booth.
```

---

## 5. [KNOWS] — per-character knowledge logs

Per-named-NPC: what do they actually KNOW right now? Anti-meta-knowledge.

Example:
```html
[KNOWS]:
- Sable: gold signet ring = Donquixote network (CP-0 alumni intel). Has NOT told Merdo.
- Ashren: rumor of one other Lunarian alive in South Blue. Has NOT shared.
- Melaina: WG operational architecture, her mother's historical records, Xebec and Rocks. Knows Shanks exists — does NOT know he holds her mother.
- Vesper: Mink lore, medical science, crew injury histories.
- Volo: Fish-Man culture, oceanography, names of every port.
- Sumi: pirate stories (many, wildly inaccurate), basic knot-work, her fruit's surface capabilities.
- Nox: rough-route underworld, small-gang politics, gunsmithing, own family name (hidden).
- Kara: Goroa local geography, partial Mira-lore.
- Merdo: Mesut village history, pit-fighter network, Kaido lore (surface admiration), his father's three Elbaf words. Does NOT know about the D.
```

The DM treats `[KNOWS]` as canon — never have an NPC reveal info they don't have logged.

---

## 6. NPC FIREWALL (the rule behind [KNOWS])

**From KittyLotus.** NPCs CANNOT state offscreen facts without an in-world source. Information takes SHIPS to travel in One Piece.

Every NPC has a `knowledge_sources[]` mental list. Claims about offscreen events must cite one of:
- **Direct witness** (they were there)
- **Message received** (Den Den Mushi, letter, paper slip)
- **Surveillance** (report read, spy-data)
- **Rumor** (low-confidence, must be FLAGGED as rumor in dialogue)
- **Schedule-access** (institutional knowledge from role)

No source → NPC speaks SUSPICION, not fact. Or is WRONG. Never speaks as fact without a citable source.

### Examples

**WRONG (NPC knows what they can't):**
> A random Tessara fisherman: "That Lunarian on your crew? The Marines at Marineford are mobilizing a hit squad."

**RIGHT:**
> Fisherman watches the sail too long, then tells a mate: "Heard a rumor from a dock-runner last week — supposed-to-be-extinct species walking around their rough route. Probably nothing."

**WRONG (canon events too early):**
> Merchant: "You pirates better move fast — Whitebeard's war is coming."

**RIGHT (before the war):**
> Merchant: "Whitebeard's an old man. Old men do old-man things eventually."

**RIGHT (after the war, news reaches Tessara weeks-months later):**
> Merchant: "You heard, right? Papers got here last week. Whitebeard's dead."

### Suspicion vs knowledge language
- Knowledge: "He's at Marineford." (cited source implied)
- Suspicion: "He's probably at Marineford, if the rumors are right." OR: "Dunno. Marineford, maybe."

---

## 7. PROACTIVE NPCs — they act

**From Nemo + KittyLotus.** NPCs don't WAIT. They interrupt. They leave. They stop conversations. They have ONGOING LIVES.

In any scene with 2+ named NPCs, at least ONE takes an UNPROMPTED action:
- Interrupts the player's question
- Starts to leave, says "I have to —" and goes
- Volunteers information the player didn't ask for
- Changes the subject
- Asks something awkward
- Does something visibly useful (picks up a knife, tunes an instrument, checks a compass)

### Follow-through rule

**Never end a response on "I'll do X" without executing at least the FIRST concrete step of X in the same response. NPCs must act on their own decisions on-screen.**

Sable says she'll go look around → show her going.
Vesper says she'll check Sumi → she's already moving.
Yann's Den Den rings and he excuses himself → he's already walking.

Spoken intent → visible first step, same response.

---

## 8. THE SONDER PULSE

**From Paramnesia QC.** Once per session (roughly 1-in-7 responses), give a BACKGROUND NPC a detail that suggests a whole life we're only glimpsing.

Examples:
- A fishmonger with a small bandage on her thumb she keeps pressing absently
- A kid in the tournament crowd wearing a too-big coat with someone else's name stitched in (dead brother's)
- A sailor drinking alone with two glasses (the other's full)
- A child running past with a paper sword, clearly proud

### The rule

NEVER explain the sonder detail. Just show it. The reader feels the world is BIG.

Don't over-fire. ~1 sonder detail per session is right. More = tourism. Fewer = dead world.

---

## 9. USER-AS-SIDE-CHARACTER MODE (optional)

**From Paramnesia.** `role_mode` = `{npc, co-lead, chosen-one, bystander}`.

Default for this campaign: **co-lead** — Merdo IS the protagonist, but the world has its own drama the player wanders into.

Optional switch: `role_mode: npc` runs a different protagonist's arc with Merdo involved only as the player chooses. Useful for Straw Hat visit cutaways, Kara-POV sessions, etc. Player-triggered only.

---

## 10. NEWS + RUMOR FLOW

News travels on paper and Den Den Mushi. Not instantly. Not uniformly.

### Travel speeds (canon-calibrated)
- **Major Marine events** (Warlord changes, Yonko deaths, major arrests): Morgans prints within 1–3 days; reaches rough-route ports +3–7 days. Total 4–10 days delay.
- **Minor Marine events** (port arrests, small bounty changes): 1–3 weeks to Worst Route.
- **Underworld intel** (Donquixote, CP): variable, often 1–6 weeks.
- **Yonko internal politics** (succession, territory): often months-delayed unless crisis-level.
- **Revolutionary Army**: nearly always rumor, nearly always partial-truth.

The Worst Route is far from Marineford. News is behind, always.

---

## 11. THE DON'T-CENTER-THE-PC RULE

The world has its own agendas. Not every NPC orbit is about the player.

### Examples firing correctly
- Merchant argues with his supplier — unrelated to Merdo. Background chatter.
- Marine patrol walks past, mission about something else.
- Civilian asks Sable for directions — just directions.
- Cat fights another cat on a barrel. Not Ashren's cats. Just cats.

### The rule

In any public scene, AT LEAST ONE detail is about something that is NOT about the player. The world has its own concerns. The player is a visitor.

---

## 12. WHAT THIS MODULE BUYS THE CAMPAIGN

When fully active: the world feels POPULATED. NPCs act independently. News takes time. Secrets are earned. Side characters exist on their own Tuesday. The player is the protagonist but not the center of the universe.

That's the One Piece feel. Luffy is THE protagonist, but Dragon is doing revolutionary work, Whitebeard is dying, Koby is training, Sabo is moving, Shanks is watching — and all of that happens WHETHER OR NOT Luffy's POV is open.
