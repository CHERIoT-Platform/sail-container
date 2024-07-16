FROM ubuntu:24.04
RUN apt update && apt install -y opam z3 libgmp-dev cvc4 pkg-config zlib1g-dev make
RUN opam init -y
RUN test -r /root/.opam/opam-init/init.sh && . /root/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
RUN opam pin -y sail 0.17.1
