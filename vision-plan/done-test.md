Read only these files, and nothing else in the repo:

- Vision doc: <path>
- Overview: <path>
- Glossary: <path>

You are about to write the technical specification for the loop in the vision doc. List every product question you would need answered first: what the user experiences, or what the product promises. Include a question only if it blocks the spec. Skip it when the doc's stated principles already answer it.

The specification owns these, so skip them:

- technical choices: storage, sync, conflict resolution, exact limits or durations
- interaction design: layout, placement, visuals, timings
- anything the vision doc marks `Deferred:`
- anything belonging to another loop in the overview's planned loops, unless this spec truly can't be written without it

Then list contradictions between the three files.

Answer with two numbered lists, **Questions** and **Contradictions**, one line per item, most important first. Empty lists are a valid answer.
