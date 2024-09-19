# syntax=docker/dockerfile:1.4

FROM --platform=linux/amd64 golang:1.22.4-bookworm

USER 0:0

COPY --from=pcap-base:latest /dist/bin/ /usr/bin/
COPY --from=pcap-base:latest /dist/lib/ /lib/x86_64-linux-gnu/
COPY --from=pcap-base:latest /dist/include/ /usr/include/

RUN ldconfig -v
