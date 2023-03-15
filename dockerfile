FROM docker.io/kalilinux/kali-rolling
RUN apt update && apt upgrade -y
RUN apt install curl -y
RUN curl https://raw.githubusercontent.com/shrox42/kali_install/main/install.sh | bash
