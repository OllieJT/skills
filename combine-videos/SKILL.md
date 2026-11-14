---
name: combine-videos
description: Losslessly join consecutive video clips into one file. Use when combining split camera recordings or appending clips in recording order.
---

1. Identify the intended source clips in the working directory, excluding
   previously generated outputs. Infer their order from filename sequences
   and recording metadata. If selection or order remains ambiguous, present
   the filenames and proposed order for the user to confirm.

2. Inspect the clips with ffprobe. Check video and audio compatibility,
   durations, and timestamps around the joins. Proceed when the selected
   clips can be joined without re-encoding. Otherwise, explain the
   incompatibility and ask the user how to proceed.

3. Join the clips with FFmpeg stream copying for both video and audio.
   Preserve every source frame and audio packet in the agreed order.
   Write a new output file and retain the originals.

   Check timing at each join and preserve audio/video synchronization.
   Base any timestamp adjustments on the inspected timing. If the source
   contains missing footage or an interruption that cannot be resolved
   losslessly, explain the limitation.

4. Verify that the output contains all source video frames and audio
   packets in order, with identical encoded content. Check timestamps
   and decode audio and video across every join. Investigate any gaps,
   overlaps, or decoding errors before declaring completion.

5. Ensure the final output is saved alongside the original files with an appropriate filename.
   Return a link to the output, its duration, the verification results,
   and any unresolved limitations. Claim a seamless result only to the
   extent supported by those checks.