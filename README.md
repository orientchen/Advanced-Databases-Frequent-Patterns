# Advanced Databases — Frequent Pattern Mining

Student Jupyter notebook for CSCI 480 / CIS 680. Adapted from the FAU-CS6 KDD exercises. Uses FP-growth (not Apriori) and the AdventureWorks SQLite database.

## Students: start here

1. On GitHub, choose **Code → Codespaces → Create codespace on main**.
2. Wait for Codespaces setup to finish (first-time setup downloads a ~123 MB database).
3. Open `Mining-Frequent-Patterns-Student-With-AdventureWorks.ipynb`.
4. Choose **Select Kernel → Python Environments → Python 3.12** (`/usr/local/bin/python`).
5. Run cells in order and complete the TODO exercises.

No PostgreSQL server or local Python installation is required. The database is installed automatically by `.devcontainer/setup.sh` and excluded from Git by `.gitignore`.

If setup failed or the database is missing, run `bash .devcontainer/setup.sh` in the Codespaces terminal, then rerun the database connection cell. Do not commit the `data/` directory.

**Instructor note:** Test from a newly created Codespace before assigning. Existing Codespaces do not automatically rerun a changed `postCreateCommand`; use `bash .devcontainer/setup.sh` in an existing Codespace if needed.

Source: https://github.com/FAU-CS6/KDD and https://github.com/FAU-CS6/KDD-Databases
