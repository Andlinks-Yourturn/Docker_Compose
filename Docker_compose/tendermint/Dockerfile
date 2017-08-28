FROM ubuntu:16.04
ENV DATA_ROOT /tendermint


ENV TMHOME $DATA_ROOT
RUN  apt-get update && \
     apt-get install -y wget && \
     apt-get install -y unzip  &&\
     rm -rf /var/lib/apt/lists/*

# Install tendermint
RUN wget  https://s3-us-west-2.amazonaws.com/tendermint/binaries/tendermint/v0.10.3/tendermint_0.10.3_linux_amd64.zip
RUN unzip -d /bin tendermint_0.10.3_linux_amd64.zip
#
EXPOSE 46656
EXPOSE 46657

COPY ./tendermint-entrypoint.sh /
RUN chmod 777 /tendermint-entrypoint.sh

CMD ["/tendermint-entrypoint.sh"]
