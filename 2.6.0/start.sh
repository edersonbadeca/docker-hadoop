docker run -d --name yarn \
        -h yarn \
        -p 8088:8088 \
        -p 8042:8042 \
        --link=1827d0fbeecf \
        --link=d73199457d23 \
        -v $HOME/data/hadoop/hdfs:/data \
        gelog/hadoop start-yarn.sh && \
docker logs -f yarn
