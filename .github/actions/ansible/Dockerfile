FROM alpine

ENV ANSIBLE_HOST_KEY_CHECKING=False

RUN apk add ansible gcc python3-dev py3-pip libc-dev libffi-dev openssl-dev
RUN pip3 install --upgrade paramiko
RUN apk add --no-cache aws-cli
COPY entrypoint.sh /entrypoint.sh
COPY ansible.cfg /ansible.cfg
COPY inventory.yml /inventory.yml
COPY playbook.yml /playbook.yml

ENTRYPOINT ["/entrypoint.sh"]
