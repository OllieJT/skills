---
name: vision-plan
description: Grill me into product-vision docs, one per user loop.
disable-model-invocation: true
---

Run the `/grilling` process (relentless, a round of questions at a time, a recommended answer attached to each) through the loop lens below. Its only output is the docs in the workspace: create, edit, and delete them as the grilling resolves things. When a question asks me to approve drafted text, quote the text in the question.

The docs are the session's state. Read the overview and the glossary first, then the vision doc this session opens, and resume from what they leave open.

A session has one subject: the overview, or one loop. Ask only what would change the subject's doc; park anything else as a note on the planned loop it belongs to.

While the overview is thin, it is the subject: grill me on the product until its fixed parts are written and I have approved its planned loops. After that the subject is the loop I name; when I name none, propose the unblocked planned loops.

**User** means whoever walks the loop, named as the glossary names them; I am the one being grilled.

## The loop lens

A **loop** is a repeatable user journey from a **start** to a **goal**. The goal is one of two kinds, and the kind steers the grilling:

- **Explicit goal**: the user arrives knowing what they want to achieve, complete, or acquire, but might not know how to get there. Grill the route: where they get lost, stall, or give up.
- **Implicit goal**: something the user can complete or attain regardless of what they set out to do; they might arrive with no clear goal at all. Grill the discovery: what the product puts in front of them, and what they leave with.

Users who share a goal arrive from different starts, with different expectations. Grill each start.

Loops nest: a stage of one loop can be a loop of its own. It stays a stage in the parent's doc until I decide it earns a vision doc of its own: when you think one does, ask me.

Loops also reveal how predictable a user's activity really is, which is what makes it worth specifying. Use the lens to find loops worth specifying, and propose ones I haven't noticed. When a loop surfaces beyond the session's subject, ask me whether to plan it; on my yes, add it to the overview's planned loops.

## Vision docs

A **vision doc** documents one loop as product design: what the user experiences and what the product promises. The technical solution belongs to the specification written from it.

Every vision doc uses these terms as its headings, in this order:

- **Start**: who the user is and the state they begin in, one entry per distinct start.
- **Goal**: where the loop ends, and whether it is explicit or implicit.
- **Inputs**: what the user must bring or know to complete the loop.
- **Stages**: the journey from start to goal; for each stage, what the user does and how the product supports it.
- **Outputs**: what the user leaves with.

## Definition of done

A vision doc is done when a fresh agent could write its technical specification without asking a single product question. Test it: dispatch a subagent with only that doc, the overview, and the glossary to list the product questions it would need answered. Grill each one into the doc; done is an empty list.

The session is done when its subject is done or parked by me, and the overview reflects it.

## The workspace

- `docs/product-vision/*.md`: the vision docs, one per loop, and the source of truth for their loops. Name each file for its loop, so the directory listing is the index.
- The glossary: the source of truth for terms, located and formatted by `/domain-modeling`. Sharpen fuzzy terms into canonical ones as they surface, record each there as that skill prescribes, and write every doc in glossary terms.
- `Product Vision.md`, at the repo root: the **overview**, read to grasp the whole product before opening any vision doc. Where it disagrees with a vision doc, the vision doc wins: rewrite the overview. Its parts are fixed in size:
  - **North star**: 2 sentences, the dream the product is working towards, phrased as an elevator pitch.
  - **Why** the product exists: 3 sentences.
  - **Who** it's for: 3 sentences.
  - **What** it does: 6 sentences, the loops combined into one picture rather than listed.
  - **Boundaries**: 3 sentences, what the product deliberately leaves to others.

  A new vision doc is absorbed by rewriting within that budget.

  The one part that grows is **Planned loops**: the loops I have approved that have no vision doc yet. Each entry is a name and a sentence on what the loop entails, any note parked for its session, and a `Blocked by` sub-bullet for every loop whose vision doc should be done first. An entry is added only on my yes and leaves when its vision doc is created; the `Blocked by` lines naming it leave when that doc is done.
