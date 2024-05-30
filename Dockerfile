FROM nginx:1.22-bullseye

LABEL NAME=hpa-cpu-memory Version=1.26.0

RUN apt-get update && \
    apt-get install -y fcgiwrap spawn-fcgi python3 && \
    rm -rf /var/lib/apt/lists/* 

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html
COPY memory.py /tmp/memory.py
COPY run.sh /run.sh

EXPOSE 80

ENTRYPOINT ["/run.sh"]
