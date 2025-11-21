#!/bin/bash

# ppip install black pylint flake8 mypy ruff isort

EXIT_STATUS = 0

black --config type_hints2.py
pylint --rcfile *.py types_hints.py
flake8 --config .flake8
mypy . --exclude venv
ruff . --config type_hints3.py --fix
isort . --setting .types_hints.py

echo existing with status $EXIT_STATUS

exit $EXIT_STATUS