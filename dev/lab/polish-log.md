# Timber polish log

The 1.3.0 pass is written up in the workspace CLAUDE.md (Timber internals) and the polish skill.

## 1.3.2 — chop flicker (2026-09-28)

- User report: at high fps the tree went black/missing for an instant at the chop (same bug as Veinminer 1.3.1). Lab
  t131: displays first drawn 3 frames after the blocks were removed.
- Fix: `job/p9` puts every displayed block back `strict` at the end of the chop tick; `put/clear` removes it the next
  tick. Displays spawn 1.006× so they don't z-fight. First take (t132) drew the whole tree black for a frame: the
  anchor cell (the log above the cut when hanging) had its block back, and a display is lit by its entity's cell. It
  now stays empty.
- t132b/t132c (oak, birch, spruce hero, oak fp): real blocks until the displays draw, no gap. The chop tick lags, so
  the server's catch-up tick can follow at once (t132c oak: removal one frame after the chop's packets); still no gap
  on any take.
- Cost, giant spruce chop, warm: the first version (per-type macro dispatch, macro anchor check) +17 ms over 1.3.1;
  records carrying `w`/`g`/`a` fed straight to the macros, the anchor checked with scores and a strict removal: +7 ms
  (noisy machine, load 9–20).
- Validation: matrix 10/10 (one known `tall_mangrove` flake on 26.2 bukkit, passed on rerun), modjar 8/8, plugin 8/8,
  Enchanted Timber 60/60 × 2 after its test's `chop()` waits 2 ticks.
