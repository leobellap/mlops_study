FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ci_cd_task.ipynb ./
COPY ny-2015-street-tree-census-tree-data.zip ./

ENTRYPOINT [ "jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root" ]
