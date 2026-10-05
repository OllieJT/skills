---
name: develop-taste
description: Develop design principles with the user through visual comparisons. Use when establishing a project's aesthetic direction or revising documented preferences after design feedback.
---

Taste must be derived from the user and demonstrated through visual examples before being adopted by the agent.

# Aligning on taste

Use the project's existing design guidance as the authoritative record. If none exists, create `README.DESIGN.md` at the repository root.

Read that guidance and the user's references. Identify one unresolved design decision. Present contrasting examples, gather feedback, and propose a principle grounded in that feedback. Save the confirmed principle. Finish when the selected decision is documented, or record what remains unresolved if the user defers it.

Visual decisions require visual examples. Before asking the user to choose or confirm a visual treatment, present rendered examples that show the actual alternatives. Reuse examples the user has already seen when they demonstrate the exact choice; create a new comparison when the question introduces a new treatment or relationship. A proposed test page, numerical values, or verbal descriptions alone do not satisfy this requirement.

Prepare and show the comparison as the next step in exploration, then ask about the visible qualities and their effect. For headline weight and leading, show representative multi-line headlines with contrasting treatments and ask which achieves the intended character. Choose the sample values yourself to make the differences visible. If visual examples cannot be presented, explain the limitation and keep the visual decision unresolved.

## Principles

Design principles form a reusable rubric for making design decisions.

Document design intent through relationships, emphasis, and general approach. Describe how elements should relate and what effect they should create, such as headings that dominate supporting text, generous space between content groups, or restrained use of accent color.

Prefer qualitative guidance that captures the qualities the user preferred and why. Treat the specific sizes, weights, spacing, and colors used in visual examples as implementation choices by default.

Include a relative measurement when it preserves an important relationship that words alone would leave ambiguous, such as line height relative to type size. Establish it through visual comparison and user confirmation, state its intended effect and scope, and retain only the precision needed to guide future decisions. A measurement earns its place through the design relationship it captures, rather than simply using a relative unit.

For example:

- "Use large, bold headings that clearly dominate supporting text" captures a principle.
- "Use 64px headings at weight 700" specifies an implementation.

Write principles that can guide different components and screen sizes while preserving the intended character.

Each principle should state:

- The design relationship or approach it guides, and the intended effect.
- Where it applies, including boundaries that materially affect its use.

Use exploration and discussion to distil the user's preferences into guidance that stands on its own. Include the distinctions that change how a future design decision should be made. Keep the record focused on the resulting guidance; references and discussion history are optional and belong only when they add something the principle needs.

Express principles through the desired qualities and how to achieve them. When feedback uses a contrast such as "spacious, not empty", explore what the distinction means to the user and translate it into positive guidance. Preserve the nuance by describing the relationships that produce the intended effect.

For example, that discussion might establish: "Use space to establish clear groups and give important content prominence, keeping related elements close enough to read together." Ground the interpretation in the user's feedback and visual comparisons. When the intended quality remains unclear, continue exploring it with the user before documenting a principle.

A preference in one comparison applies to that context. Discuss what made it successful and confirm its scope with the user before applying it more broadly. For example, preferring a compact dashboard does not establish a preference for dense layouts throughout the project.

A documented principle might read:

> **Dashboard density:** Keep related metrics close enough to scan together, with stronger separation between groups. Prioritise simultaneous visibility while preserving clear grouping and readable labels.

Before saving a principle, show its proposed wording and scope, capturing only qualities demonstrated visually and confirmed by the user. Wording approval confirms that the principle expresses the agreed direction. When feedback supports visually different interpretations, show those interpretations in a comparison before asking the user to choose. Keep deferred choices unresolved until they have been explored and confirmed.

When feedback conflicts with a principle, discuss whether its wording, scope, or intended effect needs to change. Propose revising, merging, or removing the principle before adding an exception. Confirm substantive revisions with the user.

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
