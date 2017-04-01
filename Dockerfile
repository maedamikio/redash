FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    curl \
    postgresql-9.5 \
    postgresql-server-dev-9.5 \
    sudo \
    wget \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN service postgresql start && curl -sL https://raw.githubusercontent.com/getredash/redash/master/setup/ubuntu/bootstrap.sh | bash

EXPOSE 80

CMD rm  /var/run/redis_6379.pid && \
    service redis_6379 start && \
    service postgresql start && \
    service redash_supervisord start && \
    service nginx start && \
    tail -f /dev/null
