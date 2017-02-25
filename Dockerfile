FROM blankoninfra/lucid
RUN mkdir /var/cache/apt/archives/partial && \
    apt-get install -y python-pip
ADD v1.0.tar.gz /opt
RUN mv /opt/tempel-boi-1.0 /opt/tempel && \
    cd /opt/tempel && \
    pip install -r requirements.txt
ADD run.sh /root
EXPOSE 8080
CMD ["/bin/bash","/root/run.sh"]
