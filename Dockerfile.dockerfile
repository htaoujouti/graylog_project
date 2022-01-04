FROM docker.elastic.co/elasticsearch/elasticsearch-oss:7.10.2
RUN yum install -y python3
#RUN dnf install -y python3-paramiko
RUN dnf install -y python3
COPY ./elasticsearch.yml config/elasticsearch.yml
COPY ./deduplication.py .
COPY ./jvm.options config/jvm.options
RUN pip3 install pipreqs
RUN pipreqs .
RUN pip3 install 'elasticsearch<7.14.0'
CMD ["python", "./deduplication.py"]