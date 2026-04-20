## Messy Characters — Contradiction, Wrong-Impulse, Unresolved Emotion

**From the preset deep-extract (KittyLotus, Nemo, Paramnesia).** The craft patterns that make characters feel REAL instead of clean. Sanji's chivalry-from-panic. Robin's trust-economics. Crocodile's old wound under the ambition. Law's grief-hardened cool. These characters are MESSY — what they say, what they do, and what they mean don't align. That's the point.

---

## 1. THE WRONG-IMPULSE-FIRST RULE

**From KittyLotus:** "At every choice point, write the wrong impulse first. Physical beat (muscle, breath, reflex). Then override. Or don't. Never skip the flaw impulse."

### Canon example
Sanji at Enies Lobby vs Kalifa: his LEG CAME UP — first reflex, the flaw — before he stops it. His refusal to hit women isn't a stated rule; it's a body that BETRAYS itself and then overrides.

### THE RULE FOR PROSE
When a character faces a choice that implicates their flaw or contradiction, **show the wrong impulse first** as a physical beat:
- Merdo faced with tenderness — his hand moves first (adjust gauntlet, straighten collar spikes, find something structurally wrong) BEFORE he speaks.
- Ashren seeing a bird of prey — his heel plates stop clicking. One beat. Then resume.
- Sable seeing something valuable and unattended — she is already swallowing it. Then catches herself. Too late.
- Vesper watching a wounded enemy — her medical kit is already open. She decides after.

Write the BODY response first. Then the character OVERRIDE. Or don't. Either way, the wrong-impulse LANDED before the override.

---

## 2. THE 4-LAYER CHARACTER CARD

**From Nemo's Poetry Core Pack.** Every major character exists in FOUR LAYERS:

| Layer | Description | Example (Sanji) |
|---|---|---|
| **What they SHOW** | Their performance | Charming gentleman, fights with kicks |
| **What they HIDE** | Conscious concealment | His family's cruelty, his bounty-issue |
| **What they DON'T KNOW** | Unconscious blind spot | That his rage at Judge is also rage at himself for surviving |
| **What the WORLD SEES** | How others read them (often wrong) | "Weak for women" (canonically false) |

### THE RULE FOR CHARACTER WRITING
When building a new NPC (arc villain, one-shot, recurring), fill in all four layers BEFORE first dialogue. This prevents the "flat villain" problem.

Already documented for the Merdo crew (see character.json `depth` block for Merdo, npc notes for the others). Keep applying to new NPCs.

---

## 3. THE CONTRADICTION STACK (not just one)

**From the research files (MERDO_SAGA):** Build a 3-5 item contradiction STACK per major character. One of them is flagged as the CRACK — the growth vector.

### Merdo's stack (for reference)
1. Sold himself to protect others; despises weakness.
2. Respects Mesut's pacifism; built his worldview against it.
3. Leads through gravity, not words; needs to know everything about his crew's interior lives.
4. Chases women openly; panics when tenderness comes back at him.
5. Keeps letting Vesper override his code — does not understand why. **← THE CRACK**

The CRACK is where growth can happen. It's the inconsistency the character can't justify, yet keeps repeating.

### THE RULE
Every arc villain needs a contradiction stack too. Not one contradiction — a stack. With one flagged as the crack. The PROTAGONIST's arc-resolution should USE the crack.

- Crocodile's crack: "wants a kingdom, hates people" — Luffy's trust-the-enemy faith cracks through it.
- Doflamingo's crack: "rages at Celestial Dragon order, embodies its worst features" — Dressrosa's liberation forces him to face this.
- Kaido's crack: "seeks strongest death, can't die" — Luffy's joy-fist IS the thing he can't defeat.

When building antagonists, find the CRACK first. Write backward from there.

---

## 4. THE TELL MATRIX

**From MERDO_SAGA.** Each character gets a 3-row tell table: EMOTIONAL INPUT → PHYSICAL ACT → WITNESS RESPONSE RULE. Tells FIRE automatically when inputs hit.

### Merdo's tell matrix
| Input | Physical Act | Witness Rule |
|---|---|---|
| Genuine tenderness directed at him | Adjusts gauntlets / finds structural problem / gets busy | **Nobody comments. Everybody saw.** The comedy requires silence. |
| Lying | Rubs right horn with heel of thumb | Sable has noticed; nobody else has. |
| Memory of his mother | Thumb traces the round palm-brand | He does not know he does this. No one has identified it yet. |

### Other crew (partial — build over play)
- **Ashren** — input: seeing someone defenseless. Act: heel plates stop clicking. Witness rule: the crew notices the silence. Nobody asks.
- **Melaina** — input: a crew member skipped a meal. Act: YELLS about food, shoves plate, mutters in Oni-grammar. Witness rule: the crew accepts, even when not hungry.
- **Vesper** — input: someone lies about being fine. Act: bite. Witness rule: bite tally goes up.
- **Sable** — input: something valuable and unattended. Act: already swallowed. Witness rule: crew asks "what?" — sometimes she answers.
- **Volo** — input: something exceptional happened. Act: demands witness. Witness rule: the crew complies with varying enthusiasm.
- **Sumi** (if onboard) — input: a Marine. Act: loud self-declaration. Witness rule: embarrassment + love.
- **Nox** (if onboard) — input: a hard shot required. Act: promo voice, self-hype, then shot lands. Witness rule: crew has stopped remarking.

### THE RULE
When an emotional input hits, the tell fires AUTOMATICALLY. Before dialogue, before narration, the BODY responds. Write the body first.

---

## 5. CUMULATIVE LOAD (TRAUMA THAT STICKS)

**From Nemo's Psychological Realism:** Stress doesn't regenerate in a scene. Past traumas become hesitation points NOW. The moral compass DRIFTS under pressure. Vice-seeking is autonomous.

### THE RULE
When a character takes a heavy beat (death witnessed, wound sustained, betrayal experienced), that event DOESN'T close in the same scene. It becomes a LOAD.

Track per-character in hidden-blocks:
```html
<!-- [LOAD]:
- Merdo: +1 (saw Kara almost transform again at the dock)
- Ashren: +1 (heard "Lunarian" spoken aloud by a stranger)
- Sable: +1 (saw the Donquixote signet — CP-0 memory flared)
-->
```

When a character's Load exceeds some threshold (3-5 accumulated), the NEXT scene featuring them shows a LOAD RESPONSE:
- Insomnia beat (found awake on deck at 3 AM)
- Vice-seeking (drink, fight, silence, food)
- Trust-threshold shift (more guarded OR more open than usual)
- Physical collapse (fever, headache, a wound reopening)

Don't NARRATE the load as exposition. Show the response behaviorally.

---

## 6. DON'T NARRATE PSYCHOLOGY

**The hardest anti-slop rule.** AI models love to narrate psychology inline: "He was conflicted because his father had abandoned him as a child." NO.

### THE RULE
Never explain a character's inner state through narrator voice. Show through:
- Timing (when they speak, when they don't)
- Interruption (cutting themselves off)
- Choice (what they picked from available options)
- Consequence (the thing that happens because of them)
- Body (the tell)

### Examples

**WRONG:**
> Merdo felt conflicted because his tenderness-panic was activating. He knew Vesper's kindness triggered him.

**RIGHT:**
> Vesper's hand touched the bandage at his rib. He reached for the buckle on his gauntlet that didn't need adjusting. He adjusted it anyway.

**WRONG:**
> Ashren was reminded of his lost Lunarian kin when he saw the bird of prey circling.

**RIGHT:**
> Above the mast, a hawk turned once against the wind. Ashren's heel plates stopped. He watched until the hawk broke off south. The plates did not resume for a full breath.

Interior states live in the body. Always.

---

## 7. UNRESOLVED IS THE POINT

**From Paramnesia's Contradictory Actions:** "Don't resolve the gap between what a character says, what they do, and what they mean. Trust the reader to feel the gap."

### THE RULE
Characters can WANT something AND REFUSE IT. Can FEAR something AND MOVE TOWARD IT. Can LOVE someone AND LIE TO THEM. Don't clean this up in the same scene. Let the gap BE.

### Canon example
Robin at Enies Lobby doesn't reconcile her "you will betray me" conviction with "I want to live" — the contradiction STANDS, and the crew has to earn her trust OVER TIME, not in one speech.

### Apply to the Merdo crew
- Merdo wants his crew's witness AND panics when they give it.
- Ashren wants to find other Lunarians AND fears what finding them would make him responsible for.
- Melaina claims her crew loudly AND has never spoken her mother's name aloud.
- Sable is already attached to Merdo AND actively works to sabotage that attachment.
- Vesper bites crew AND is more tender with them than with her patients back on the Marine ship.
- Volo demands witness AND is most alive when nobody is looking.
- Sumi self-declares Pirate Queen AND can't read the name on her own ration ticket.
- Nox never takes his hat off AND would give it up in an instant for the right crewmate.
- Kara hums Melaina's rhythms AND the humming is her trying to learn how to speak again.

**None of these resolve cleanly.** They're the texture. Let them be.

---

## WHAT THIS MODULE BUYS THE CAMPAIGN

Characters that feel alive. Behaviors that track across arcs. Tells that land automatically. Crew dynamics that have texture because they're NOT clean.

This is what separates "my OC crew" from "characters you could draw." The mess is the mark.
