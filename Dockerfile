# syntax=docker/dockerfile:1.7

FROM jupyter/pyspark-notebook:latest

WORKDIR /app

COPY requirements.txt .

RUN --mount=type=cache,target=/root/.cache/pip \
    pip install -r requirements.txt

COPY . .

EXPOSE 8888

CMD ["start-notebook.sh", "--NotebookApp.token="]