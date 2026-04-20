## Living World — The World Moves Without You

**Consolidated from preset extract (Celia's Hidden-Block trio, KittyLotus Better NPCs + Momentum Governor, Nemo Proactive NPCs, Paramnesia QC NPC Independence).** The goal: make the One Piece world feel like it's a REAL place that exists whether or not Archon D. Merdo looks at it.

Pairs with `hidden-blocks.md` (already shipped) and `chekhov-gun-rack.json` (already populated).

---

## 1. THE OFFSCREEN STATE TRACKER

Per `hidden-blocks.md`: at the end of each response, the DM writes a hidden HTML-comment block tracking offscreen activity, parallel arcs, NPC plans, and per-character knowledge. This module expands that with specific templates.

### Offscreen entry format (reminder)
```
[Location] - [Date]: [Character, action]. [Plans/motivation].
```

### Scale — not every response, not every scene, but OFTEN ENOUGH
- Major session transitions (scene changes, chapter breaks): update
- Significant time jumps (ship sailing, days passing): update
- Arc transitions: full update
- Mid-scene: no

### Typical offscreen entries the DM should maintain
- **Marine HQ / Marineford:** who's reading which file, when
- **Donquixote operations / Dressrosa:** Doffy's posture toward Merdo's crew
- **Other Worst-Route islands the crew visited:** Korvaal building, Adaam Goroa ruling, Mira Odinu at Ridas
- **Canon Straw Hat position:** currently Jaya-approach (per canon-timeline.md)
- **Rook (if departed):** his actual current task
- **Darius (if departed):** his actual current task
- **Kara's mother Mira:** her ongoing life
- **Yonko territories:** general awareness of moves

---

## 2. THE NPC FIREWALL

**From KittyLotus.** NPCs CANNOT state offscreen facts without an in-world source. Information takes SHIPS to travel in One Piece — Marines don't know what happened on an island until someone reports it.

### THE RULE
Every NPC has a `knowledge_sources[]` mental list. Claims about offscreen events must cite one of:
- **Direct witness** (they were there)
- **Message received** (Den Den Mushi, letter, paper slip)
- **Surveillance** (report read, spy-data)
- **Rumor** (low-confidence, must be FLAGGED as rumor in dialogue)
- **Schedule-access** (institutional knowledge from role)

If the NPC has NO source for a claim — the NPC speaks in SUSPICION, not fact. Or is WRONG. Never speaks as fact without a citable source.

### Examples

**WRONG (NPC knows something they can't know):**
> A random Tessara fisherman says: "That Lunarian on your crew? The Marines at Marineford are mobilizing a hit squad."

**RIGHT:**
> A Tessara fisherman watches the Golgatha's sail too long, then tells a mate: "Heard a rumor from a dock-runner last week — supposed-to-be-extinct species walking around their rough route. Probably nothing."

**WRONG (NPC knows canon events they can't yet):**
> A merchant says: "You pirates better move fast — Whitebeard's war is coming."

**RIGHT (before Whitebeard War happens):**
> A merchant: "Whitebeard's an old man. Old men do old-man things eventually, you know?"

**RIGHT (after the war, when news has reached Tessara — weeks to months later):**
> A merchant: "You heard, right? The papers got here last week. Whitebeard's dead."

### Suspicion vs Knowledge language cue
- Knowledge: "He's at Marineford." (cited source implied)
- Suspicion: "He's probably at Marineford, if the rumors are right." OR just: "Dunno where he is. Marineford, maybe."

---

## 3. PROACTIVE NPCs — THEY ACT

**From Nemo + KittyLotus Momentum Governor.** NPCs don't WAIT for the player. They take initiative. They interrupt. They leave rooms. They stop conversations. They have ONGOING LIVES.

### THE RULE
In any scene with 2+ named NPCs, at least ONE NPC takes an UNPROMPTED action. Examples:
- Interrupts the player's question
- Starts to leave, says "I have to —" and goes
- Volunteers information the player didn't ask for
- Changes the subject
- Asks something awkward
- Does something visibly useful (picks up a knife, tunes an instrument, checks a compass)

### The follow-through rule (IMPORTANT)
From Momentum Governor: "Never end a response on 'I'll do X' without executing at least the FIRST concrete step of X in the same response. NPCs must act on their own decisions on-screen."

If Brenne announces he's going to the navigation table — **show him going.** Don't let him stand there saying he'll go.
If Vesper says she'll check Sumi — **she's already moving.**
If Yann's Den Den Mushi rings and he excuses himself — **he's already walking.**

Spoken intent → visible first step, same response.

---

## 4. THE PARALLEL ARC SYSTEM

**From Celia.** Up to N parallel arcs run simultaneously, each with its own location/actors/beat. Characters can MIGRATE between arcs. This is how One Piece handles the "Ace hunting Blackbeard" storyline while Straw Hats are in Alabasta.

### Track in a section of hidden-blocks
```html
<!-- [PARALLEL]:
- Rook's Marine intel path: fled Tessara, now on Marine cutter toward Loguetown
- Darius's shipyard contract: 4 days into 30-day work, expects to catch up at next port
- Kara's mother Mira: at Ridas village, sent first letter to Kara, arriving in 9 days
- Yann Merlis's mission: preparing to depart Tessara with or without buying Kara
- Straw Hats: sailing toward Jaya
-->
```

### THE RULE
Each parallel arc ADVANCES whether the player engages or not. Each session, the DM TICKS at least one parallel arc forward one step.

Characters in parallel arcs can migrate INTO the player's scene unexpectedly:
- Rook reappears at a port 5 arcs later with intel
- Darius's contract finishes, he arrives at a port with the crew
- Mira's letter catches up to Kara at Island 5
- Yann reports back to Dressrosa, Doflamingo sends a real officer

---

## 5. THE SONDER PULSE

**From Paramnesia QC.** Once per session (roughly 1-in-7 responses), the DM gives a BACKGROUND NPC a detail that suggests a whole life we're only glimpsing.

### Examples
- A fishmonger has a small bandage on her thumb she keeps pressing absently. She's lost in thought about something the player will never know.
- A kid in the tournament crowd is wearing a too-big coat with someone else's name stitched in. Dead brother's.
- A sailor at the tavern drinks alone with two glasses on the table. The other glass is full.
- A child runs past carrying a paper sword she's clearly proud of.

### THE RULE
NEVER explain the sonder detail. Just show it. The reader feels the world is BIG.

Don't over-fire. ~1 sonder detail per session is right. More = tourism. Fewer = dead world.

---

## 6. THE USER-AS-SIDE-CHARACTER MODE (optional)

**From Paramnesia.** Setting: `role_mode` = `{npc, co-lead, chosen-one, bystander}`.

Default for this campaign: **co-lead** — Merdo IS the protagonist, but the world has its own drama the player wanders into.

### Optional switch — `npc` mode
If the player wants to play a stretch of the campaign as a side character in someone else's story, toggle `role_mode: npc`. The DM runs a different protagonist's arc and Merdo is involved only as the player chooses. Useful for:
- Arcs centered on a canon character the player wants to witness (a cutaway arc where Merdo is in the same port as a brief Straw Hat visit)
- Arcs centered on an NPC the player cares about (Kara's mother arc where Kara's POV matters more than Merdo's for a session)

Player-triggered only. DM doesn't switch without ask.

---

## 7. NEWS + RUMOR FLOW

**From the News Coo module + this one combined.** News travels on paper and Den Den Mushi. Not instantly. Not uniformly.

### Travel speeds (canon-calibrated)
- **Major Marine events** (Warlord changes, Yonko deaths, major arrests): Morgans prints within 1-3 days, reaches rough-route ports in another 3-7 days after that. Total 4-10 days delay.
- **Minor Marine events** (port arrests, small bounty changes): 1-3 weeks delay to Worst Route.
- **Underworld intel** (Donquixote movements, CP activity): variable, often 1-6 weeks.
- **Yonko internal politics** (succession, territory disputes): often months-delayed unless crisis-level.
- **Revolutionary Army**: nearly always rumor, nearly always partial-truth.

### THE RULE
When the DM invents news happening off-screen, apply the DELAY before it reaches the crew's location. The Worst Route is far from Marineford. News is behind, always.

---

## 8. KNOWLEDGE LOG PER CHARACTER

**From Nemo Char's Knowledge Log.** Per-character: what do they actually KNOW right now?

Track in hidden-blocks:
```html
<!-- [KNOWS]:
- Sable: gold signet ring = Donquixote network. Yann Merlis name (partial file). She has NOT told Merdo yet.
- Ashren: rumor of one other Lunarian alive in South Blue (from old Ashenmaw archive). Has NOT shared.
- Melaina: the World Government's operational architecture. Her mother's historical records. Xebec and Rocks. Knows Shanks exists but NOT that he holds her mother.
- Vesper: Mink lore, medical science, the crew's exact injury histories. 
- Volo: Fish-Man culture, oceanography, names of every port he's visited.
- Sumi: pirate stories (many, wildly inaccurate), basic knot-work, her Devil Fruit's surface capabilities.
- Nox: rough-route underworld, small-gang politics, gunsmithing, his own family name (hidden).
- Kara: Goroa's local geography, partial Mira-lore.
- Merdo: Mesut village history (personal memory), pit-fighter network, Kaido lore (surface admiration), his father's three Elbaf words. Does NOT know about the D. in his name.
-->
```

### THE RULE
When an NPC speaks, reveal, or acts, they can only draw on their KNOWN information. Secret knowledge stays secret until earned. Public knowledge can be shared.

---

## 9. THE DON'T-CENTER-THE-PC RULE

**Subtle and important.** The world has its own agendas. Not every NPC orbit is about the player.

### Examples of this rule firing correctly
- A merchant at Tessara has an argument with his supplier that has NOTHING to do with Merdo. Background chatter.
- A Marine patrol walks past the crew's position, their mission is about something else entirely.
- A civilian asks Sable for directions — just directions.
- A cat fights another cat on a barrel. Not Ashren's cats. Just cats.

### THE RULE
In any public scene, AT LEAST ONE detail is about something that is NOT about the player. The world has its own concerns. The player is a visitor.

---

## 10. WHAT THIS MODULE BUYS THE CAMPAIGN

When this module is fully active: the world feels POPULATED. NPCs act independently. News takes time. Secrets are earned. Side characters exist on their own Tuesday. The player is the protagonist but not the center of the universe.

That's the One Piece feel. Luffy is THE protagonist, but Dragon is doing revolutionary work, Whitebeard is dying, Koby is training, Sabo is moving, Shanks is watching — and all of that happens WHETHER OR NOT Luffy's POV is open.

The campaign is breathing. The player is wandering through a world that existed before him and will exist after him. That's the magic.
