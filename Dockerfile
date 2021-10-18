FROM ubuntu:focal
WORKDIR /usr/local/bin
RUN apt update && apt install -y curl git ansible
COPY . .
CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"] 