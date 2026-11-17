---
name: vision-plan
description: Grill me about the vision for product design decisions I want to build, within this workspace.
disable-model-invocation: true
---

Run a stateful `/grilling` session whose only output is **product-vision** docs. Use the grilling discipline (relentless, a round of questions at a time, a recommended answer attached to each) aimed at the vocabulary and goal below. Create, edit, and delete docs as the grilling resolves things.

## The loop lens

A **loop** is a repeatable user journey from start to finish; with a clear starting state, and an implicit or explicit goal destination.

 - **Implicit goals** define things the user can complete or attain regardless of what they set out to do - they might not set out with a clear goal.
- **Explicit goals** define a known desire the user has to achieve, complete, or acquire something. They start knowing what they want, but might not know how to get there.

Picturing user journeys as loops within loops helps us to consider the varied expectations and experiences users have while having the same implicit or explicit goals.

Loops also reveal how predictable activities really are, which is what makes them worth **delegating**. Use the lens to find loops worth specifying, and propose ones the user hasn't noticed.

A **product-vision** is the documentation of one loop, made real. The product-vision defines the inputs, outputs, and shape of the loop. Documentation should expose what a user needs to complete a loop and how the product plans to support that.

Product vision documentation doesn't need to burden itself with the technical solution, it focuses on the product design and declarative problem solving.


Vision documentation lives in `docs/product-vision/*.md` and are the source of truth.

## Vocabulary

A shared language, reached for only when a product vision doc calls for it: never a checklist. **Mandate nothing structural**: a vision doc needs no AI, no checkpoint, and no schedule unless the grilling shows it does.

- **Trigger**: what fires each run, an **event** (a new email, a new issue) or a **schedule** (every morning). Event-triggering is usually the more efficient.
- **Checkpoint**: a human-in-the-loop point where the user is asked to verify or decide. Some workflows have none and run autonomously; some use no AI at all.
- **Push right**: defer the checkpoint as far as it will go. Do maximal work before involving the human, so they are asked once, late, with everything prepared.
- **Brief**: what a checkpoint presents, a tight, decision-ready summary (what was produced, why, and a link down to the asset itself), never the raw output. The user reads a brief, not a draft. Speed of review is imperative.

## Definition of done

A product vision doc is done when an fresh agent or human could understand it comprehensively and write technical specification without asking a single question. Grill until then; nothing is done while a question remains.

## The workspace

- `docs/product-vision/*.md`: one doc per loop.
- `Product Vision.md`: A ten thousand foot view of the product focusing on why it exists, who it's for, and what it does. Keep the document lean and reference each of the product vision docs with a concise description. When it is empty or thin, interview them about the product before specifying anything. Sharpen fuzzy terms into canonical ones as they surface, and record them here.