FROM jupyter/datascience-notebook
RUN pip install businessoptics businessoptics_nb_ext
COPY start-notebook.sh /usr/local/bin/start-notebook.sh
