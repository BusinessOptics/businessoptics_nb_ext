docker build -t businessoptics/git-notebook . && \
docker run -it -p 8888:8888  -v /home/james/work:/home/jovyan/work/ businessoptics/git-notebook $1 
