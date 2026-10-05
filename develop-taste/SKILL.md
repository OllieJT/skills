---
name: develop-taste
description: Develop design principles with the user through visual comparisons. Use when establishing a project's aesthetic direction or revising documented preferences after design feedback.
---

Taste must be derived from the user and demonstrated through visual examples before being adopted by the agent.

# Aligning on taste

Use the project's existing design guidance as the authoritative record. If none exists, create `README.DESIGN.md` at the repository root.

Read that guidance and the user's references. Identify one unresolved design decision. Present contrasting examples, gather feedback, and propose a principle grounded in that feedback. Save the confirmed principle. Finish when the selected decision is documented, or record what remains unresolved if the user defers it.

## Principles

Design principles form a reusable rubric for making design decisions. Each principle should state:

- The decision it guides.
- Where it applies.
- The user feedback or approved visual example supporting it.

Keep references to supporting examples beside the principle.

A preference in one comparison is evidence for that context. Confirm its scope with the user before applying it more broadly. For example, preferring a compact dashboard does not establish a preference for dense layouts throughout the project.

A documented principle might read:

> **Dashboard density:** Prefer compact spacing in monitoring views so more metrics remain visible together. Based on the user's preference for the compact dashboard example, linked here, because it kept more metrics visible. Marketing layouts remain unresolved.

Before saving a principle, show its proposed wording and scope. Treat explicit approval of that wording as confirmation. When feedback supports several interpretations, ask which interpretation the user intends.

When feedback conflicts with a principle, review its scope and supporting evidence. Propose revising, merging, or removing the principle before adding an exception. Confirm substantive revisions with the user.

## Disciplines

Design disciplines help us explore how visual elements and their use contribute to a design style. Focus each comparison on a few elements that help answer the current design question. Explore related elements together when their relationship matters, such as typography, spacing, and hierarchy.

Keep content and unrelated design choices consistent so the user can identify what drives their preference. State the question the variants explore, and discuss the user's feedback before generalising it into a principle.

Aligning on principles should feel like an A/B/C test for the user. Use single-file HTML examples with CSS and JavaScript when they make the comparison easier to judge.

The disciplines below are examples. They overlap and can be combined. Choose or introduce disciplines appropriate to the design style and decision you are exploring.

- **Typography:** Font, size, weight, line height, and letter spacing.
- **Color palette:** Colors, shades, and combinations.
- **Color usage:** Light and dark treatments, accents, and extent of color.
- **Spacing and density:** Proximity, grouping, whitespace, and compactness.
- **Layout patterns:** Placement and relationships between text, visuals, and recurring elements.
- **Hierarchy and emphasis:** Reading order, prominence, and contrast.
- **Shape and geometry:** Angular or rounded forms, corner radii, and recurring shapes.
- **Depth and materiality:** Layers, shadows, transparency, blur, and texture.
- **Borders and dividers:** Boundaries expressed through lines, containers, space, or backgrounds.
- **Motion and rhythm:** Timing, easing, transitions, and choreography.
- **Interaction and feedback:** Affordances, responses to input, and loading, success, or failure states.
- **Voice and language:** Tone, vocabulary, capitalisation, and phrasing.
- **Content and restraint:** What earns space, what is omitted, and what appears progressively.
- **Consistency and variation:** Repetition and deliberate exceptions.
- **Responsive composition:** How hierarchy, density, layout, and imagery adapt to available space.