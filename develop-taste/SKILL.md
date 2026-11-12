---
name: develop-taste
description: Develop design principles with the user through visual comparisons. Use when establishing a project's aesthetic direction or revising documented preferences after design feedback.
disable-model-invocation: true
user-invocable: true
---

Taste must be derived from the user and demonstrated through visual examples before being adopted by the agent. With this process you will run experiments to codify the user's taste into design documentation.

# Aligning on taste

Use the projects `README.DESIGN.md` as the authoritative record. If none exists, create `README.DESIGN.md` at the repository root.

1. Identify one unresolved design principle.
2. Study the existing code base for established instances of this principle.
3. **Survey:** present broadly contrasting examples to locate the region the user prefers.
4. **Narrow:** hold the leading example fixed and vary one variable per round, until every claim you would write traces to a round where only that variable changed and the user chose.
5. Propose the principle, each sentence citing the round that settled it.
6. Document the confirmed principle within the design documentation.

Finish when the selected decision is documented, or record what remains unresolved if the user defers it.

Remain focused on one principle, you can document unresolved design principles that arise at the bottom of the file.

## Visual decisions always require visual examples.

Before asking the user to choose or confirm a decision, present rendered examples that show the actual alternatives. Reuse examples the user has already seen when they demonstrate the exact choice; create a new comparison when the question introduces a new treatment or relationship. A proposed test page, numerical values, or verbal descriptions alone do not satisfy this requirement.

When the question uses structural terms (levels, groups, internal, external), label those parts on the rendered example, such as with an overlay, so you and the user mean the same thing.

Prepare and show the comparison as the next step in exploration, then ask the user which visible difference drew them to their pick. A bare pick is a direction, not a principle. Choose the sample values yourself to make the differences visible. If visual examples cannot be presented, explain the limitation and keep the visual decision unresolved.

Build every comparison on the principles already confirmed in the design doc, so each new learning extends what's decided rather than contradicting it. When a question needs to stretch a confirmed principle, such as pushing type further to test a bolder tone, keep the stretch recognisable as that principle and point it out to the user.

## What is a design principle?

Design [PRINCIPLES.md](PRINCIPLES.md) form a reusable rubric for making design decisions. Once the visual examples are thrown away, a good designer should be able to use the principles you document to create new work that match the user's taste.

## What is a design discipline?

Design [DISCIPLINES.md](DISCIPLINES.md) are the taxonomy of our design documentation. They describe all of the measurable values, and immeasurable qualities that we can tweak to achieve the taste we're working towards.

## Laying the foundation

When the user gives no direction and the design doc can't answer what to explore next, start with foundational disciplines such as tone, typography, color, and spacing; later decisions build on them. These are examples: [DISCIPLINES.md](DISCIPLINES.md) lists more, and even that list is open-ended.

Each discipline spans several sessions, one question per session, explored on a representative screen from the project. Skip any question the design doc already answers. Example questions:

- **Typography:** What character should the typeface carry? How strongly should headings dominate body text? How dense should body copy read?
- **Color:** How much of the interface carries color? What role does the accent play? How does dark mode differ from light?
- **Spacing:** How tightly do related elements group? How much separates sections? Where should density change between views?
- **Tone:** Reach it by association, since it resists description. Which brands, sites, or media feel like this product? How contemporary should it feel? Utilitarian, or distinctive and artistic?
