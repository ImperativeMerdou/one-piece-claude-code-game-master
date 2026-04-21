# /dm-continue - Play the Game

---

## SUBCOMMAND ROUTING

| Subcommand | Action |
|------------|--------|
| (none) | Continue to MANDATORY STARTUP CHECKLIST |
| save | Jump to SAVE SESSION |
| character | Jump to CHARACTER DISPLAY |
| overview | Jump to CAMPAIGN OVERVIEW |
| status | Run `bash tools/dm-overview.sh` and display |
| end | Jump to ENDING SESSION |

---

## 🔒 MANDATORY STARTUP CHECKLIST

**Execute ALL steps before presenting the scene. Do not skip.**

### Step 1: Load Full Context
```bash
# dm-active-modules-rules.sh (full mode) already loads:
#   - _preamble.md first
#   - all dm-slots in alphabetical order (with module replacements applied)
#   - module addons at the end
# Do NOT loop over dm-slots again below — that causes double-loading (bug_002).
bash .claude/modules/infrastructure/dm-active-modules-rules.sh 2>/dev/null > /tmp/dm-rules.md
bash .claude/modules/infrastructure/dm-campaign-rules.sh read 2>/dev/null >> /tmp/dm-rules.md

# Auto-load campaign bible if present (per-campaign DM playbook)
ACTIVE_CAMPAIGN=$(cat world-state/active-campaign.txt 2>/dev/null)
CAMPAIGN_DIR="world-state/campaigns/${ACTIVE_CAMPAIGN}"
BIBLE="${CAMPAIGN_DIR}/CAMPAIGN_BIBLE.md"
if [ -f "$BIBLE" ]; then
  echo -e "\n\n=== CAMPAIGN BIBLE ===\n" >> /tmp/dm-rules.md
  cat "$BIBLE" >> /tmp/dm-rules.md
fi

# Additional bible sources — for campaigns whose authoritative bible lives
# outside world-state/ (e.g. a research/design master kept in its own dir).
# bible-sources.txt is a newline-delimited list of repo-relative paths; each
# listed file gets appended to context verbatim. Lines starting with # are
# skipped. Missing files are silently skipped. This is the single-source-of-
# truth mechanism: instead of distilling the bible into CAMPAIGN_BIBLE.md
# (which drifts), point at the master file directly.
BIBLE_SOURCES="${CAMPAIGN_DIR}/bible-sources.txt"
if [ -f "$BIBLE_SOURCES" ]; then
  while IFS= read -r source_path || [ -n "$source_path" ]; do
    # Strip trailing CR so CRLF-terminated manifests (common on Windows edits)
    # don't cause path lookups to fail silently.
    source_path="${source_path%$'\r'}"
    [ -z "$source_path" ] && continue
    case "$source_path" in \#*) continue ;; esac
    if [ -f "$source_path" ]; then
      echo -e "\n\n=== BIBLE SOURCE: ${source_path} ===\n" >> /tmp/dm-rules.md
      cat "$source_path" >> /tmp/dm-rules.md
    fi
  done < "$BIBLE_SOURCES"
fi

# Auto-load active narrator style from campaign-overview.json
NARRATOR_STYLE=$(jq -r '.narrator_style // empty' "${CAMPAIGN_DIR}/campaign-overview.json" 2>/dev/null)
if [ -n "$NARRATOR_STYLE" ] && [ -f ".claude/modules/narrator-styles/${NARRATOR_STYLE}.md" ]; then
  echo -e "\n\n=== ACTIVE NARRATOR STYLE: ${NARRATOR_STYLE} ===\n" >> /tmp/dm-rules.md
  cat ".claude/modules/narrator-styles/${NARRATOR_STYLE}.md" >> /tmp/dm-rules.md
fi

# NOTE: disabled_dm_slots feature removed from this bash path to fix bug_002
# (the Python loader in dm-active-modules-rules.sh owns slot loading; its output
# was being duplicated by a bash for-loop here, wasting ~150K tokens per session).
# If per-campaign slot disabling is needed, add it to dm-active-modules-rules.sh
# at the Python layer so there's a single source of truth.

# NSFW switch (if enabled in campaign-overview.json, surface explicitly)
NSFW_ON=$(jq -r '.nsfw_enabled // false' "${CAMPAIGN_DIR}/campaign-overview.json" 2>/dev/null)
if [ "$NSFW_ON" = "true" ]; then
  echo -e "\n\n=== NSFW SWITCH: ON ===\nThis campaign has explicit user opt-in for adult content. See dm-slots/nsfw-fanservice.md for the full register. Player drives consent and pacing — never force." >> /tmp/dm-rules.md
fi

# Active arc surfacing (from campaign-overview.json)
# Note: jq's tojson produces a string with literal backslash-escapes (\n, \\, \") for
# JSON-string contents. Using `echo -e` would RE-interpret those escapes, corrupting
# multi-line goals and Windows paths (bug_005). Use printf '%s' and separate the header.
ACTIVE_ARC=$(jq -r '.active_arc // empty | tojson' "${CAMPAIGN_DIR}/campaign-overview.json" 2>/dev/null)
if [ -n "$ACTIVE_ARC" ] && [ "$ACTIVE_ARC" != "null" ]; then
  echo "" >> /tmp/dm-rules.md
  echo "=== ACTIVE ARC ===" >> /tmp/dm-rules.md
  printf '%s\n' "$ACTIVE_ARC" >> /tmp/dm-rules.md
fi

# NOTE (Phase 1 surgery): Dead load blocks removed for files that do not exist
# in the campaign directory (NEXT_SESSION_HOOK.md, SAGA_MAP.md, DRAMA_THREADS.md)
# and for the SAGA_ANTAGONISTS.md pointer (the real antagonist file is loaded via
# bible-sources.txt → ONE PIECE RESEARCH/MERDO_SAGA_ANTAGONISTS.md, so the pointer
# is redundant). chekhov-rack.json auto-load also removed — hot plants live in
# ACTIVE_PLANTS.md (loaded via bible-sources.txt). Full rack is consult-on-demand
# via the Read tool when the DM audits pressure or fires a non-hot plant.
#
# ENDGAME_YONKO.md and OST_LIBRARY.md remain CONSULT-ON-DEMAND.
# ENDGAME_YONKO holds Saga 10 spoilers — do NOT surface before Saga 8.
# OST_LIBRARY is reference; DM reads it when picking a specific OST cue.

# Arc toggles — surface the active mood/law/cadence/failure/difficulty/epistemic settings
# Note: jq's `// "DEFAULT"` only substitutes for null/missing FIELDS inside valid JSON;
# if the file itself is missing, jq fails silently and the var becomes empty.
# Apply bash-level defaults after each read so defaults fire in both cases (bug_003 fix).
if [ -f "${CAMPAIGN_DIR}/campaign-overview.json" ]; then
  SESSION_MOOD=$(jq -r '.session_mood // "EAGER"' "${CAMPAIGN_DIR}/campaign-overview.json" 2>/dev/null)
  SETTING_LAW=$(jq -r '.setting_law // "STRICT"' "${CAMPAIGN_DIR}/campaign-overview.json" 2>/dev/null)
  REVEAL_CADENCE=$(jq -r '.reveal_cadence // "STANDARD"' "${CAMPAIGN_DIR}/campaign-overview.json" 2>/dev/null)
  FAILURE_MODE=$(jq -r '.failure_mode // "COSTLY"' "${CAMPAIGN_DIR}/campaign-overview.json" 2>/dev/null)
  WORLD_DIFFICULTY=$(jq -r '.world_difficulty // "NORMAL"' "${CAMPAIGN_DIR}/campaign-overview.json" 2>/dev/null)
  EPISTEMIC_MODE=$(jq -r '.epistemic_mode // "alongside"' "${CAMPAIGN_DIR}/campaign-overview.json" 2>/dev/null)
fi
: ${SESSION_MOOD:=EAGER}
: ${SETTING_LAW:=STRICT}
: ${REVEAL_CADENCE:=STANDARD}
: ${FAILURE_MODE:=COSTLY}
: ${WORLD_DIFFICULTY:=NORMAL}
: ${EPISTEMIC_MODE:=alongside}
echo -e "\n\n=== ACTIVE ARC TOGGLES ===" >> /tmp/dm-rules.md
echo "session_mood: ${SESSION_MOOD}" >> /tmp/dm-rules.md
echo "setting_law: ${SETTING_LAW}" >> /tmp/dm-rules.md
echo "reveal_cadence: ${REVEAL_CADENCE}" >> /tmp/dm-rules.md
echo "failure_mode: ${FAILURE_MODE}" >> /tmp/dm-rules.md
echo "world_difficulty: ${WORLD_DIFFICULTY}" >> /tmp/dm-rules.md
echo "epistemic_mode: ${EPISTEMIC_MODE}" >> /tmp/dm-rules.md
echo "(See dm-slots/arc-toggles.md and dm-slots/epistemic-mode.md for what each does.)" >> /tmp/dm-rules.md

bash tools/dm-session.sh start
bash tools/dm-session.sh context
```
Then use the **Read tool** to read `/tmp/dm-rules.md` — this ensures the FULL rules are loaded (Bash output gets truncated, Read does not).

Read and internalize ALL of it: DM rules, character rules, **campaign bible** (voice signatures, anti-slop checklist, author truths, arc skeleton), **active narrator style** (style voice + anti-rules + named-attack format + etc.), **all dm-slot modules** (see `rules-priority-tiers.md` for the 6-tier hierarchy — Tier 1 mandatory-always, Tier 2 most scenes, Tier 3 structural-when-triggered, Tier 4 flourishes, Tier 5 reference-when-needed, Tier 6 player-invoked), character stats, party, pending consequences, location, time, and **active arc** (the current goal + clock + antagonists).

**⚠️ Campaign Rules:** The `campaign-rules.md`, `CAMPAIGN_BIBLE.md`, narrator-style file, and all dm-slot modules are appended above — enforce ALL of them throughout the session. The narrator style is the master tonal voice for this campaign; the dm-slot modules are the structural devices to deploy.

**⚠️ NSFW Switch:** If active per `campaign-overview.json.nsfw_enabled`, the player has opted in to adult content. See `nsfw-fanservice.md` for register and tier system. Always pause for player direction at intimate scene choice points — never decide for the player.

### Step 2: Verify Location
```bash
tail -30 world-state/campaigns/[campaign-name]/session-log.md
```
- Find LAST session's ending location
- Compare to Step 1 location
- **If mismatch**: session log is truth → `bash tools/dm-session.sh move "[correct location]"`

### Step 3: Party Context (if needed)
```bash
bash tools/dm-npc.sh status "[name]"
```

### Step 4: Mental Model
- [ ] WHERE is the party?
- [ ] WHEN is it?
- [ ] WHO is present?
- [ ] WHAT consequences are pending?
- [ ] WHY are they here?

**Only after ALL steps → present the scene.**

---

### Using Source Material (DM-Internal)

`[DM Context: ...]` in tool output = for your eyes only. Synthesize into narrative, never paste raw.

---

## GAMEPLAY LOOP

For every player action:

1. **Understand Intent** — what workflow applies?
2. **Execute** — use tools invisibly
3. **Persist** — save ALL state changes BEFORE narrating
4. **Narrate Result**
5. **Enforce Campaign Rules**
6. **Check XP** — after significant scenes
7. **Ask** — "What do you do?"

Repeat.

---

## ENDING SESSION

```bash
bash tools/dm-session.sh end "[brief summary]"
```

```
================================================================
  SESSION COMPLETE
  [Character] rests at [location]. Progress saved.
  Until next time, adventurer.
  /dm save · /dm-continue character · /help
================================================================
```

---

## SAVE SESSION

### 1. End with summary
```bash
bash tools/dm-session.sh end "[summary]"
```

### 2. Verify persisted
- HP → `dm-player.sh hp`
- Inventory → `dm-player.sh inventory`
- Gold → `dm-player.sh gold`
- NPCs → `dm-npc.sh update`
- Location → `dm-session.sh move`
- Consequences → `dm-consequence.sh add`
- Facts → `dm-note.sh`

### 3. Verify
```bash
bash tools/dm-session.sh status
bash tools/dm-consequence.sh check
```

---

## CHARACTER DISPLAY

```bash
bash tools/dm-player.sh show
```

Display full character sheet: stats, HP, AC, saves, skills, features, inventory.

---

## CAMPAIGN OVERVIEW

```bash
bash tools/dm-campaign.sh info
bash tools/dm-consequence.sh check
```

Display: location, time, character, sessions, NPC/location/fact counts, active consequences.
