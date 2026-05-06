# notion-move-tactic-stack

`notion-move-tactic-stack` is a compact Elixir repository for chess and game engines, centered on this goal: Build an Elixir toolkit that studies tactic behavior through windowed input fixtures, with late-data behavior checks and explicit failure cases.

## Why This Exists

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how position pressure and search width should influence a review result.

## Notion Move Tactic Stack Review Notes

`recovery` and `stale` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Capabilities

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/notion-move-tactic-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `endgame risk` and `position pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Elixir code keeps the review rule close to the tests.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Roadmap

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
