# Code Review Notes — doxygen-mcp

## What failure looks like here
A Doxygen operation that succeeds at the subprocess level (exit 0) but
produces corrupt, incomplete, or empty documentation — the tool reports
success when the underlying generation silently failed.

## Key invariants the reviewer should check
- Subprocess calls to `doxygen` always check both exit code and stderr
- Path inputs to Doxygen are validated before being written to a Doxyfile
- Generated output directories are not committed to the repo (gitignored)
- Temporary Doxyfile writes are cleaned up on both success and failure paths

## Paths to skip
- `var/` — health reports, not source
- `.specify/` — spec-kit tooling, not our code

## Finding standards
- Every finding must cite a specific file and line number
- Cap nits at 3 per review pass; flag the class, not every instance
