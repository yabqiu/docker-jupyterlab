FROM python:3.10-bullseye

ENV TZ="America/Chicago"

RUN apt update && \
    apt upgrade -y && \
    apt install nodejs npm -y && \
    pip install --upgrade pip && \
    pip install jupyterlab ipywidgets boto3 redis pandas && \
    jupyter labextension install jupyterlab-drawio && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager


CMD jupyter-lab /notebook --ip 0.0.0.0 --port 8888 --allow-root
