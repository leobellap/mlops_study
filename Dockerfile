FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
ENTRYPOINT [ "jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root" ]
