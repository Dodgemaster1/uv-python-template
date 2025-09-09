set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

ruff:
    uv run ruff check src pyproject.toml tests --fix --preview
    uv run ruff format src pyproject.toml tests --preview


mypy:
    uv run mypy src tests

test:
    uv run pytest -v -s
