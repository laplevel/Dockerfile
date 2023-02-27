FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y vim openssl kubectl mc curl \
    && curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash \
    && curl -sL https://aka.ms/InstallAzureCLIDeb | bash \
    && apt-get install -y python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*
    
WORKDIR /Andris

COPY . .

CMD ["bash"]


