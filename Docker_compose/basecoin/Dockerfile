FROM test/ubuntu:v1.0 

ENV DATA_ROOT=/basecoin


ENV BCHOME $DATA_ROOT

COPY ./basecoin-entrypoint.sh /
RUN chmod 777 /basecoin-entrypoint.sh 

# Expose the data directory as a volume since there's mutable state in there
VOLUME $DATA_ROOT


EXPOSE 46658
EXPOSE 46657



CMD ["/basecoin-entrypoint.sh"]
