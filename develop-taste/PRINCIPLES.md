# Principles

A principle describes how elements relate and the effect they create: headings that dominate supporting text, generous space between groups, restrained accent color. It guides different components and screen sizes while preserving the intended character.

## Anatomy

Each principle states:

- **Relationship and effect:** the design relationship or approach it guides, and what that achieves.
- **Scope:** where it applies, including boundaries that materially affect its use.

> **Dashboard density:** Keep related metrics close enough to scan together, with stronger separation between groups. Prioritise simultaneous visibility while preserving clear grouping and readable labels.

## Intent here, values in code

The code defines exact values; the doc captures the intent behind them. A value can illustrate a principle, but leave the full set to the code so the doc stays current as values change.

> "Use large, bold headings that clearly dominate supporting text, such as 64px bold over 16px body."

## Positive guidance

When feedback is phrased as a contrast, explore what the distinction means to the user and write the relationships that produce the desired quality.

- **Feedback:** "Spacious, not empty."
- **Principle:** "Use space to establish clear groups and give important content prominence, keeping related elements close enough to read together."

If the intended quality is still unclear, keep exploring before documenting.

## Scope

A preference holds for the context it was tested in. Discuss what made it work and confirm its scope before applying it more broadly.

- **Tested:** the user prefers a compact dashboard.
- **Not established:** dense layouts throughout the project.

## Self-contained

The design doc carries the reasoning and distinctions needed to apply each principle. Leave demos and exploration artifacts out of it. A principle may point to the source file that implements it, such as the global stylesheet, but must read fully without opening that file.

## Confirming

Before saving, show the proposed wording and scope, covering only qualities the user chose between in a narrow round. When feedback supports visually different interpretations, compare them before asking the user to choose.

## Revising

When feedback conflicts with a principle, decide with the user whether its wording, scope, or intended effect should change. Prefer revising, merging, or removing the principle over adding an exception.
