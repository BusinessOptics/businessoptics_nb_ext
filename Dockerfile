FROM jupyter/datascience-notebook
RUN pip install businessoptics
COPY . /extensions
COPY start-notebook.sh /usr/local/bin/start-notebook.sh
USER root
WORKDIR /extensions
RUN python setup.py develop
USER jovyan
WORKDIR /home/jovyan/
CMD start-notebook.sh --NotebookApp.token=''
