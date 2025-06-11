set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

ruff:
    uv run ruff format src pyproject.toml tests
    uv run ruff check src pyproject.toml tests --fix

mypy:
    uv run mypy src tests

test:
    uv run pytest -n 12 -v -s