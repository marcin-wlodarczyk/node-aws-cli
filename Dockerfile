FROM node:22

RUN apt-get update && apt-get install -y unzip curl
RUN apt-get clean

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -rf awscliv2.zip

RUN apt-get -y purge curl && apt-get -y purge unzip

CMD ["/bin/bash"]