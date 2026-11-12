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
3. Present contrasting examples that test your assumptions.
4. Gather feedback, and repeat this process until the user is happy with the leading example.
5. Propose a principle grounded in that feedback and the winning example.
4. Document the confirmed principle within the design documentation.

Finish when the selected decision is documented, or record what remains unresolved if the user defers it.

Remain focused on one principle, you can document unresolved design principles that arise at the bottom of the file.

## Visual decisions always require visual examples.

Before asking the user to choose or confirm a decision, present rendered examples that show the actual alternatives. Reuse examples the user has already seen when they demonstrate the exact choice; create a new comparison when the question introduces a new treatment or relationship. A proposed test page, numerical values, or verbal descriptions alone do not satisfy this requirement.

Prepare and show the comparison as the next step in exploration, then ask about the visible qualities and their effect.  Choose the sample values yourself to make the differences visible. If visual examples cannot be presented, explain the limitation and keep the visual decision unresolved.

## What is a design principle?

Design [PRINCIPLES.md](PRINCIPLES.md) form a reusable rubric for making design decisions. Once the visual examples are thrown away, a good designer should be able to use the principles you document to create new work that match the user's taste.

## What is a design discipline?

Design [DISCIPLINES.md](DISCIPLINES.md) are the taxonomy of our design documentation. They describe all of the measurable values, and immeasurable qualities that we can tweak to achieve the taste we're working towards.

Good design documentation should start with a solid foundation of typography, color, spacing, and establish a tone that captures the intended vibe of the designs.