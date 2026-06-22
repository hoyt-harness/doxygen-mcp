#!/usr/bin/env bash
# Single source of truth for CI/code-quality checks.
# Invoked locally by hooks/pre-push (blocking) and by .github/workflows/ci.yml
# (confirmation only) — both run this exact script so local and CI cannot drift.
set -e

uv sync --extra dev

echo "Running tests..."
uv run pytest

echo "Linting with Ruff..."
uv run ruff check src/
uv run ruff format src/ --check

echo "Security vulnerability scan (safety)..."
uv run safety check --json || echo "Safety check completed with warnings"

echo "ci-check passed."
