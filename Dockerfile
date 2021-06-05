FROM danisla/hadoop:2.7.5

ENV HADOOP_IDENT_STRING hdfs

RUN useradd -r -s /usr/sbin/nologin -g 0 hdfs

RUN mkdir -p /tmp/hadoop-config /root/hdfs/namenode /root/hdfs/datanode /usr/local/hadoop-2.7.5/logs \
    && chown -R hdfs:0 /root/hdfs /tmp/hadoop-config /usr/local/hadoop /usr/local/hadoop-2.7.5 \
    && chmod -R g=u /root/hdfs /tmp/hadoop-config /usr/local/hadoop /usr/local/hadoop-2.7.5

VOLUME ["/root/hdfs/namenode", "/root/hdfs/datanode"]

USER hdfs
