FROM iojs

RUN git clone https://github.com/cubedro/eth-netstats &&\
    cd /eth-netstats && npm install &&\
    cd /eth-netstats && npm install -g grunt-cli &&\
    cd /eth-netstats && grunt
ENV WS_SECRET g3heim

WORKDIR /eth-netstats

EXPOSE 3000

CMD ["npm", "start"]
