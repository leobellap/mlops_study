FROM python:3.12.3-slim

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN rm requirements.txt

COPY ci_cd_task.ipynb ./
COPY ny-2015-street-tree-census-tree-data.zip ./
COPY pyproject.toml ./

RUN ruff check --fix
RUN ruff format
RUN rm pyproject.toml

RUN jupyter nbconvert --to html ci_cd_task.ipynb --output ci_cd_task_jupyter.html

LABEL org.opencontainers.image.description="This is the latest version of Jupyter Lab container for EDA and CI-CD task."
EXPOSE 8888
ENTRYPOINT [ "jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root" ]
