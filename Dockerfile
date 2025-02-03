FROM ubuntu
RUN apt update && apt install ssh sudo -y
RUN adduser iti
RUN echo "iti:123" | chpasswd
RUN usermod -aG sudo iti
ENTRYPOINT service ssh start && bash
