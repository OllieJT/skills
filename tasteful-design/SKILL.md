---
name: tasteful-design
description: Implement and explore interfaces within an established design style. Use when building or refining designs from approved design guidance, including visual comparisons, layout, typography, motion, interface copy, and rendered review.
disable-model-invocation: false
user-invocable: true
---

# Tasteful design

Implement the project's design doc with care and imagination. `README.DESIGN.md` is the source of truth for this project's taste. The habits in this skill are defaults: they fill gaps the design doc leaves, and the design doc wins wherever they differ. If no design doc exists, use `develop-taste` to create one.

When a choice would add, change, or broaden a principle, use `develop-taste` to resolve it with the user.

## Read the design doc

Read the design doc in full before designing. The doc records intent; the code records values. Read the doc for what each principle should achieve and where it applies, and the code (tokens, components, and the stylesheets the doc references) for the values that realise it.

- Within a principle's scope, follow it.
- Outside its scope, work from its intent rather than stretching its wording.
- When the doc and the code disagree, raise it with the user rather than choosing one.

## Ground it in the subject

Establish the subject, audience, and the experience's primary job from the brief and project context. Clarify missing information when it would materially change the design.

Use the subject's real content, materials, imagery, and vocabulary. When content is missing, make draft assumptions explicit and use representative copy that helps the user judge the design.

Read existing tokens, components, and layout conventions before proposing additions. Reuse what supports the task. Ground necessary additions in the principles.

## Build

By default, implement the design doc on the part of the codebase or feature in focus, using the project's tokens, components, and styling conventions.

Preserve the design doc's intent while refining details. Real content, responsive layouts, and interaction states may reveal problems that were invisible at the outset.

Resolve routine details using the principles. When a discovery creates a meaningful aesthetic choice, show contrasting alternatives and return the judgement to the user. Previous selections remain the basis for work unless new evidence warrants revisiting them.

## Explore when asked

When the user asks to explore, develop several directions within the design doc before building. Treat plans as hypotheses: experiments and rendered results should inform the design, and the user makes the aesthetic judgement calls between promising alternatives.

### Frame the decision

Identify a design question worth exploring. It might concern composition, emphasis, density, imagery, or how an interaction expresses the design doc's style.

State what the exploration should help the user decide. Keep its scope small enough that the alternatives are easy to compare.

### Generate contrasting options

Develop a few meaningfully different answers within the design doc. Give each option a clear rationale grounded in the content, the user's task, and the principles. Review options before presenting them so each is coherent and worth considering.

Use the cheapest medium that makes the decision visible. Wireframes can compare structure; rendered HTML or an interactive prototype can reveal typography, visual balance, or behaviour. Reuse the project's implementation when it makes comparison easier.

### Compare with the user

Set up each comparison following develop-taste's [comparing rules](../develop-taste/DISCIPLINES.md#comparing). Show the alternatives at comparable fidelity, explain what differs, and ask what drives the user's preference. Offer a recommendation with reasons, while leaving the aesthetic judgement to the user.

The user may choose an option, combine aspects, reject all of them, or request another direction. Use that feedback to refine the next comparison. A selection holds for the current context; then build it as above.

## Review the rendered result

Inspect the implementation at representative viewport sizes and in relevant interaction states. Use screenshots or browser inspection when available.

Check whether the result expresses the design doc, supports the content hierarchy, and helps the user complete their task. Resolve visual and functional issues, then show the finished result for review.

Finish when the work is implemented, the review findings are resolved, and any checks the environment prevented are stated.

## Design habits

### Let composition express the subject

Give the most important content an appropriate form and prominence. On a landing page, this may be a headline, image, demonstration, or interactive moment. In a working interface, it may be the primary task or information the user needs first.

Choose composition for the content and purpose.

### Make typography deliberate

Use the design doc's type system to establish hierarchy, rhythm, and personality. Consider scale, weight, width, line length, and spacing together.

Explore different treatments within that system when they help answer the current design question. Introduce new typefaces through `develop-taste` when they would change the style.

### Make structure communicate

Use grouping, labels, dividers, and numbering to express real relationships in the content.

Give spacing clear ownership between layouts and components. Follow the project's styling conventions and resolve conflicting declarations at their source.

### Give motion a purpose

Use motion to explain change, guide attention, provide feedback, or express an aspect of the design doc's style. Compare treatments when timing or choreography materially affects the experience.

Keep motion proportionate to its purpose and provide an appropriate reduced-motion experience.

### Match execution to the direction

Follow the design doc's direction in execution. A restrained style depends on precise spacing, typography, and detail; an expressive one depends on deliberate relationships between its elements.

Judge complexity and decoration by their contribution to the design doc's style and the user's task. Give emphasis to the places that deserve it.

### Maintain a usable foundation

Check responsive composition, readable content, sufficient contrast, keyboard operation, visible focus, and relevant loading, empty, error, and success states.

Preserve these qualities across the alternatives you present and the implementation you deliver.

## Writing in design

Treat words as design material. Decide what each part of the interface needs to communicate and write enough to make it understandable and usable.

Use the audience's vocabulary, and the design doc's voice for tone, capitalisation, and phrasing. Name things by what users recognise and control. Technical terms belong where they help that audience act accurately.

Prefer specific wording and active voice. Controls should explain their action, such as "Save changes". Keep action names consistent throughout a flow so that "Publish" leads to "Published".

For errors, state what is known and provide an available next step. When the cause is unknown, describe the observed problem accurately.

For empty states, explain what the absence means. Offer an action when one is useful; make it clear when nothing needs attention.

Remove filler and keep labels, instructions, and examples clear in their purpose.
