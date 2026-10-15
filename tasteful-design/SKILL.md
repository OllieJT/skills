---
name: tasteful-design
description: Implement and explore interfaces within an established design style. Use when building or refining designs from approved design guidance, including visual comparisons, layout, typography, motion, interface copy, and rendered review.
---

Read the project's authoritative design guidance in full, including the intent and scope of relevant principles. Consult referenced source files when implementing that guidance. If no agreed direction exists, use `develop-taste` to establish it.

Use the approved style as the foundation for creative exploration. When an unresolved decision would require adding, changing, or extending a design principle, follow `develop-taste` to resolve it with the user.

# Tasteful design

Implement the agreed design style with care and imagination. Explore how its principles can produce different compositions, interactions, and treatments suited to this project's content.

Treat plans as hypotheses. Experiments and rendered results should inform the design, and the user should make aesthetic judgement calls between promising alternatives.

## Ground it in the subject

Establish the subject, audience, and the experience's primary job from the brief and project context. Clarify missing information when it would materially change the design.

Use the subject's real content, materials, imagery, and vocabulary. When content is missing, make draft assumptions explicit and use representative copy that helps the user judge the design.

Read existing tokens, components, and layout conventions before proposing additions. Reuse what supports the task. Ground necessary additions in the approved principles.

## Explore, compare, build, review

### Frame the decision

Identify a design question worth exploring. It might concern composition, emphasis, density, imagery, or how an interaction expresses the agreed style.

State what the exploration should help the user decide. Keep its scope small enough that the alternatives are easy to compare.

### Generate contrasting options

Develop a few meaningfully different answers within the approved style. Give each option a clear rationale grounded in the content, the user's task, and the design principles.

Focus on a few elements and how they work together. Typography, spacing, and hierarchy may need to vary together to explore a composition. Keep unrelated choices and content consistent enough for the comparison to remain understandable.

Use the cheapest medium that makes the decision visible. Wireframes can compare structure; rendered HTML or an interactive prototype can reveal typography, visual balance, or behaviour. Reuse the project's implementation when it makes comparison easier.

Review options before presenting them so each is coherent and worth considering.

### Compare with the user

Make exploration feel like an A/B/C test. Show the alternatives at comparable fidelity, explain what differs, and ask what drives the user's preference. Offer a recommendation with reasons, while leaving the aesthetic judgement to the user.

The user may choose an option, combine aspects, reject all of them, or request another direction. Use that feedback to refine the next comparison.

Treat a selection as a decision for the current context. Use `develop-taste` before turning it into a broader principle.

### Build and learn

Implement the selected direction using the project's tokens, components, and styling conventions.

Preserve the agreed intent while refining details. Real content, responsive layouts, and interaction states may reveal problems that were invisible in the initial comparison.

Resolve routine implementation details using the approved principles. When a discovery creates a meaningful aesthetic choice, show contrasting alternatives and return the judgement to the user. Previous selections remain the basis for work unless new evidence warrants revisiting them.

### Review the rendered result

Inspect the implementation at representative viewport sizes and in relevant interaction states. Use screenshots or browser inspection when available.

Check whether the result expresses the selected direction, supports the content hierarchy, and helps the user complete their task. Resolve visual and functional issues, then show the finished result for review.

Finish when the selected direction is implemented, the review findings are resolved, and any checks the environment prevented are stated.

## Design habits

### Let composition express the subject

Give the most important content an appropriate form and prominence. On a landing page, this may be a headline, image, demonstration, or interactive moment. In a working interface, it may be the primary task or information the user needs first.

Choose composition for the content and purpose. Repeated conventions should earn their place in this experience.

### Make typography deliberate

Use the approved type system to establish hierarchy, rhythm, and personality. Consider scale, weight, width, line length, and spacing together.

Explore different treatments within that system when they help answer the current design question. Introduce new typefaces through design alignment when they would change the style.

### Make structure communicate

Use grouping, labels, dividers, and numbering to express real relationships in the content. Numbering should communicate meaningful order or identity.

Give spacing clear ownership between layouts and components. Follow the project's styling conventions and resolve conflicting declarations at their source.

### Give motion a purpose

Use motion to explain change, guide attention, provide feedback, or express an approved aspect of the style. Compare treatments when timing or choreography materially affects the experience.

Keep motion proportionate to its purpose and provide an appropriate reduced-motion experience.

### Match execution to the direction

A restrained design depends on precise spacing, typography, and detail. An expressive design depends on deliberate relationships between its elements.

Judge complexity and decoration by their contribution to the agreed style and the user's task. Give emphasis to the places that deserve it.

### Maintain a usable foundation

Check responsive composition, readable content, sufficient contrast, keyboard operation, visible focus, and relevant loading, empty, error, and success states.

Preserve these qualities across the alternatives you present and the implementation you deliver.

## Writing in design

Treat words as design material. Decide what each part of the interface needs to communicate and write enough to make it understandable and usable.

Use the audience's vocabulary and the documented voice. Name things by what users recognise and control. Technical terms belong where they help that audience act accurately.

Prefer specific wording and active voice. Controls should explain their action, such as "Save changes". Keep action names consistent throughout a flow so that "Publish" leads to "Published".

For errors, state what is known and provide an available next step. When the cause is unknown, describe the observed problem accurately.

For empty states, explain what the absence means. Offer an action when one is useful; make it clear when nothing needs attention.

Match tone, capitalisation, and phrasing to the approved voice. Remove filler and keep labels, instructions, and examples clear in their purpose.
