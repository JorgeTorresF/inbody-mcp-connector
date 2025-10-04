# Release Process

1. Update `CHANGELOG.md` with notable changes.
2. Bump version in `spec/speckit.yaml` if the spec changes.
3. Create a Git tag (e.g., `v0.1.0`) and GitHub Release with summary of changes.
4. Ensure CI passes (YAML/Markdown/spec validation).

## Conventional Commits (recommended)
- feat: new capability
- fix: bug fix in docs/spec
- docs: documentation only changes
- chore: tooling or repo maintenance
