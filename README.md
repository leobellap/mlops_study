## CI-CD task
### Contains:
1. EDA notebook: ci_cd_task.ipynb
2. Dockerfile for Jupyter Lab container, built with Python:3.12.3-slim image: python_slim.Dockerfile. It has linting and formatting layer with Ruff. It also converts ipynb file to html version.
3. Github Actions Workflows for CI-CD: .github/workflows. Full CI-CD workflow: docker.yml. Linting on push: linter.yml.
4. jupyter-lab-container package: docker image with EDA notebook and html document.
