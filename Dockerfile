FROM base/devel

MAINTAINER Sebastiaan Koppe <mail@skoppe.eu>

RUN apt-get update && apt-get install -y git gcc make dub ldc \
 && cd / \ 
 && git clone https://github.com/skoppe/afl \
 && cd afl \
 && make \
 && apt-get -y autoremove git make \ 
 && rm -rf /var/cache/apt

ENTRYPOINT ["/entrypoint.sh"]
CMD ["ldc2"]
