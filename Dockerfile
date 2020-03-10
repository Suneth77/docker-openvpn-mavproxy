FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN echo "Europe/Zurich" > /etc/timezone && \
    apt-get update && \
    apt-get install -y \
        python-dev \
        python-opencv \
        python-wxgtk3.0 \
        python-pip \
        python-matplotlib \
        python-pygame \
        python-lxml \
        python-yaml \
    && \
    apt-get clean all
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools && \
    pip install --upgrade MAVProxy

EXPOSE 14550

RUN mkdir /var/log/mavproxy/

WORKDIR /var/log/mavproxy/

ENTRYPOINT ["mavproxy.py"]
CMD ["--help"]