# Principles

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

Use exploration and discussion to distil the user's preferences into self-contained guidance. Document the reasoning and distinctions needed to apply each principle within the design doc itself. Keep demos and exploration artifacts out of the doc's references. References to project source files, such as the global stylesheet, may identify where the guidance is implemented; the doc must still explain the design intent and scope without requiring those files to be opened.

Express principles through the desired qualities and how to achieve them. When feedback uses a contrast such as "spacious, not empty", explore what the distinction means to the user and translate it into positive guidance. Preserve the nuance by describing the relationships that produce the intended effect.

For example, that discussion might establish: "Use space to establish clear groups and give important content prominence, keeping related elements close enough to read together." Ground the interpretation in the user's feedback and visual comparisons. When the intended quality remains unclear, continue exploring it with the user before documenting a principle.

A preference in one comparison applies to that context. Discuss what made it successful and confirm its scope with the user before applying it more broadly. For example, preferring a compact dashboard does not establish a preference for dense layouts throughout the project.

A documented principle might read:

> **Dashboard density:** Keep related metrics close enough to scan together, with stronger separation between groups. Prioritise simultaneous visibility while preserving clear grouping and readable labels.

Before saving a principle, show its proposed wording and scope, capturing only qualities demonstrated visually and confirmed by the user. Wording approval confirms that the principle expresses the agreed direction. When feedback supports visually different interpretations, show those interpretations in a comparison before asking the user to choose. Keep deferred choices unresolved until they have been explored and confirmed.

When feedback conflicts with a principle, discuss whether its wording, scope, or intended effect needs to change. Propose revising, merging, or removing the principle before adding an exception. Confirm substantive revisions with the user.