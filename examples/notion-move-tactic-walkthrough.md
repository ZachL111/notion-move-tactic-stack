# Notion Move Tactic Stack Walkthrough

I use this file as a small checklist before changing the Elixir implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | position pressure | 206 | ship |
| stress | move ordering | 187 | ship |
| edge | search width | 229 | ship |
| recovery | endgame risk | 236 | ship |
| stale | position pressure | 127 | watch |

Start with `recovery` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `endgame risk` against `position pressure`, not the raw score alone.
