FROM gcr.io/distroless/static-debian13:debug-nonroot@sha256:2a581fcbda6320d4d17fd6ff4774bb96e4825d2be9c2bca59f0777b429997f51

USER nonroot
WORKDIR /home/nonroot/

ARG image_version client TARGETARCH
ENV RELEASE=$image_version CLIENT=$client

ARG TARGETPLATFORM
COPY $TARGETPLATFORM/kubescape /usr/bin/kubescape
RUN ["kubescape", "download", "artifacts"]

ENTRYPOINT ["kubescape"]
