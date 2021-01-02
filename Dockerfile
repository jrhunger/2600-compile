FROM ubuntu:20.04
ENV DASM_VER=2.20.14
ADD https://github.com/dasm-assembler/dasm/releases/download/${DASM_VER}/dasm-${DASM_VER}-linux-x64.tar.gz /tmp/dasm.tgz
RUN tar -xzf /tmp/dasm.tgz -C /usr/local/bin && \
  chmod 755 /usr/local/bin/dasm && \
  mkdir /build
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
