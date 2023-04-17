FROM debian:bullseye-slim
ARG VAULT_VERSION="1.13.1"

RUN apt-get update -y && apt-get install -y bash gnupg wget curl zip unzip libdigest-sha-perl jq
RUN curl https://raw.githubusercontent.com/kanisterio/kanister/master/scripts/get.sh | bash -s
RUN wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip && unzip vault_${VAULT_VERSION}_linux_amd64.zip && mv vault /usr/local/bin 


CMD [ "/usr/bin/tail", "-f", "/dev/null" ]