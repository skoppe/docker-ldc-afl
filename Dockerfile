FROM skoppe/ldc

MAINTAINER Sebastiaan Koppe <mail@skoppe.eu>

RUN apt-get update && apt-get install -y git gcc make \
 && cd \ 
 && git clone https://github.com/skoppe/afl \
 && cd afl \
 && make \
 && apt-get -y autoremove git make \ 
 && rm -rf /var/cache/apt

ENTRYPOINT ["/entrypoint.sh"]
CMD ["ldc2"]
