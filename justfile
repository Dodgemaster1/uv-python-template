set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

alias l := lint
lint:
    uv run ruff format src pyproject.toml tests
    uv run ruff check src pyproject.toml tests --fix
    uv run ruff format src pyproject.toml tests

alias tc := typecheck
typecheck:
    uv run mypy src tests

alias t := test
test:
    uv run pytest -v -s
