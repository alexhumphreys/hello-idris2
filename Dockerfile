FROM snazzybucket/idris2:latest as builder

RUN mkdir /opt/hello-idris2
WORKDIR /opt/hello-idris2

COPY . ./
RUN true

RUN make build-executable
RUN pwd
RUN ls -R build

FROM ubuntu:20.04

RUN apt-get update && apt-get install --yes gcc make chezscheme && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/hello-idris2/exec

COPY --from=builder /opt/hello-idris2/build/exec /opt/hello-idris2/exec

ENV PATH="/opt/hello-idris2/exec:${PATH}"

ENTRYPOINT /opt/hello-idris2/exec/helloIdris2
