FROM archlinux
WORKDIR /usr/local/bin
RUN pacman -Syu --noconfirm && pacman -S curl git ansible vim --noconfirm
COPY . .
#CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
