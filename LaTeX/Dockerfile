FROM ghcr.io/cheriot-platform/sail:$TARGETARCH-latest
RUN apt update && apt install -y --no-install-recommends opam zlib1g-dev pkg-config libgmp-dev z3 cvc4 texlive-plain-generic texlive-latex-base texlive-latex-recommended texlive-latex-extra texlive-science texlive-fonts-recommended texlive-fonts-extra texlive-bibtex-extra texlive-extra-utils latexmk
RUN opam init -y
RUN test -r /root/.opam/opam-init/init.sh && . /root/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
RUN opam pin -y sail 0.17.1
