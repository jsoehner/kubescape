FROM gcr.io/distroless/static-debian13:nonroot@sha256:e2e927ec666bae08560abb3c55d0659eceabb657f56b6782ab500a9fc7f555e3

USER nonroot
WORKDIR /home/nonroot/

ARG TARGETPLATFORM
COPY $TARGETPLATFORM/downloader /usr/bin/downloader
RUN ["downloader"]
COPY $TARGETPLATFORM/ksserver /usr/bin/ksserver

ARG image_version client
ENV RELEASE=$image_version CLIENT=$client

ENTRYPOINT ["ksserver"]
