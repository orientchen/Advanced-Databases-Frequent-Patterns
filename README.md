# Advanced Databases — Data Mining and Text Retrieval

Jupyter notebook teaching materials for CSCI 480 / CIS 680. Includes frequent-pattern mining and text retrieval examples.

## Notebooks

### Frequent-pattern mining

- [Progressive student notebook](Mining-Frequent-Patterns-Progressive-Student.ipynb)
- [Clean student notebook](Mining-Frequent-Patterns-Student-Clean.ipynb)
- [AdventureWorks student notebook](Mining-Frequent-Patterns-Student-With-AdventureWorks.ipynb)

The frequent-pattern exercises use FP-growth and the AdventureWorks SQLite database, adapted from FAU-CS6 KDD exercises.

### Text retrieval

- [Term weighting: TF, IDF, and TF-IDF](Text-Retrieval-Term-Weighting.ipynb) — equations, worked examples from the text-retrieval lecture, and executable Python checks. No additional packages are required.

## Using GitHub Codespaces

1. Choose **Code → Codespaces → Create codespace on main**.
2. Allow the initial setup to finish. It installs Python notebook dependencies and downloads the AdventureWorks SQLite database (~123 MB).
3. Open the notebook you want to use.
4. Choose **Select Kernel → Python Environments → Python 3.12** (`/usr/local/bin/python`).
5. Run the cells in order.

The existing `.devcontainer` and `requirements.txt` support both topics. No PostgreSQL server or local Python installation is required. If the database setup fails, run `bash .devcontainer/setup.sh` in the Codespaces terminal. Do not commit `data/`.

**Instructor note:** Test with a fresh Codespace before assigning. Existing Codespaces do not automatically rerun a changed `postCreateCommand`.

Frequent-pattern source materials: https://github.com/FAU-CS6/KDD and https://github.com/FAU-CS6/KDD-Databases
