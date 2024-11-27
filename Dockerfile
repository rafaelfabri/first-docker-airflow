FROM apache/airflow:2.7.2-python3.9

ARG PYTHON_BASE_IMAGE="python:3.9"
ARG AIRFLOW_HOME=/opt/airflow

USER root

RUN apt-get update 


COPY ./requirements.txt /opt/airflow/

USER airflow

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r  /opt/airflow/requirements.txt

EXPOSE 8080

RUN pip install --no-cache-dir 'apache-airflow==2.7.2' lxml --constraint "https://raw.githubusercontent.com/apache/airflow/constraints-2.7.2/constraints-3.9.txt"
