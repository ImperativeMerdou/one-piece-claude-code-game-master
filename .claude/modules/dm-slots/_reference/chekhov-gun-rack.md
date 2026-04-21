## Chekhov's Gun Rack — The Continuity Engine

**Adapted from Paramnesia's GRAVITAS director + Gun Rack mechanism.** This is the single most important addition for a One Piece campaign — Oda's whole craft is planting things hundreds of chapters before they pay off. This module gives the DM a structural mechanism for the same.

---

## Concept

Two things happen invisibly during play:

1. **PLANTING** — when a beat introduces something that COULD pay off later (a name dropped, an object glimpsed, a wound, a habit, an institution, a piece of intel, a character's contradiction), the DM tags it internally and writes it to the gun rack.

2. **FIRING** — when a future scene reaches the right moment, the DM PULLS from the gun rack and pays off an oldest-first plant. The payoff lands harder because the audience saw the plant arc(s) ago.

The user-visible prose does not change. Only the DM's tracking does.

---

## Storage

The gun rack lives at `world-state/campaigns/<campaign>/chekhov-rack.json` with this schema:

```json
{
  "rack": [
    {
      "id": "rack-001",
      "planted_at": "Day 1, Ashenmaw cave",
      "session": 1,
      "plant": "Rook recorded Void Century geometric symbols (cube-and-circle) from the Ashenmaw resonance device.",
      "potential_payoffs": [
        "World Government investigation revealing why the device was shut down",
        "Vegapunk-tier cipher identifies the symbols",
        "Robin (Straw Hats) sees them and recognizes the alphabet"
      ],
      "preferred_arc": "saga-late",
      "status": "loaded",
      "fire_pressure": 1
    }
  ],
  "fired": [
    {
      "id": "rack-XXX",
      "planted_at": "...",
      "fired_at": "Day NN, Location",
      "fire_session": NN,
      "payoff_used": "..."
    }
  ]
}
```

Fields:
- `id` — unique identifier
- `planted_at` — when/where the plant happened
- `session` — session number
- `plant` — the seeded fact, in 1-2 sentences
- `potential_payoffs` — possible ways this could land later
- `preferred_arc` — when ideally to fire (next-session / next-arc / saga-mid / saga-late)
- `status` — loaded / armed (ready to fire next-arc) / fired
- `fire_pressure` — int 1-5; goes UP each session it's not fired; 5 = "fire it next opportunity"

---

## When to PLANT (during scene-writing)

Watch for these moments and plant:
- A character mentions an offscreen person, place, or institution
- An object enters the scene that could matter later (signet ring, scarred dagger, sealed letter)
- A wound — physical, emotional, or social
- A habit or tic with backstory potential
- A piece of intel the player has but doesn't fully understand
- A faction's quiet move (Marine reshuffle, World Government dispatch, underworld payment)
- A coincidence that's "too convenient" — make it not a coincidence later
- A throwaway line that has interpretation room
- A character's casual lie

After the response, internally update the gun rack with the new plant. Don't tell the player. The plant is now LOADED.

## When to FIRE

At any major scene moment, scan the rack for plants whose `preferred_arc` matches the current arc, with highest `fire_pressure`. Pick ONE. Pay it off in a way that recontextualizes earlier scenes. Move the entry to `fired`.

Hard rule: **plants must FIRE before they spoil.** If a plant has been loaded for 5+ sessions without firing, the DM should bias toward firing it the next opportunity. Sitting plants forever = forgotten plants.

## Fire-pressure escalation

Each session a plant doesn't fire, increment its `fire_pressure` by 1. At pressure 5, the DM MUST find a way to fire it within 2 scenes or it's at risk of becoming dead lore.

## Visible vs invisible

The plant tags and gun rack are DM-internal. The player sees only the prose. NEVER print `[PLANT: ...]` or `[FIRED: ...]` markers in player-facing output.

---

## Saga seeds (already loaded — see chekhov-rack.json)

The campaign starts with these already on the rack — major saga threads from the bible. The DM should fire them gradually:

- **Melaina's mother is held by Shanks** (saga-late)
- **Sable's real name is Irina Grinworth Bella** (mid-saga)
- **Sable was filed by Lucci as compromised CP-0 asset** (mid-saga, on CP collision)
- **Rook's sealed Marine intelligence file** (early-saga, fires when crew visibility crosses threshold)
- **Ashren's Lunarian search** (late-saga, requires major arc to earn)
- **Merdo's village (Mesut) sold him at 15** (mid-to-late saga)
- **Merdo's Conqueror's Haki dormant** (saga-defining moment, peak emotional pressure)
- **Korvaal's spiral pendant** (Day 1 plant — saga payoff TBD)
- **Void Century device symbols Rook recorded** (saga-late)
- **Hudore's daughter who ran away to be a pirate** (saga arc when she resurfaces or Hudore re-encounters Merdo)
- **Yann Merlis's mother who sold him at 12 to pay his father's debt** (mid-saga, when the crew touches Yann's home island)
- **The Whale prisoner in The Cage** (mid-to-late saga — possibly a Yonko officer in disguise)
- **The gold signet ring on Yann** (immediate-arc plant — Doflamingo network confirmation when fired)
- **Sumi's "Nika" nickname (Joy Boy connection)** (saga-late, when Liberation drums first play)
- **Brother Allun in The Cage knows Parseval from before** (Tessara-arc plant; fires if rescue arc activates)
- **Petra Mauler's chess game with Hudore** (Tessara-late or post-Tessara, when Hudore's interior softness needs to surface)

DM operates with these in mind from Day 11 forward.
