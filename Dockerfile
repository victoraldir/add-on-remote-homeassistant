ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Install requirements for add-on
RUN apk add openssh

# Copy data for add-on
COPY run.sh /
COPY labkeypair.pem /
RUN chmod a+x /run.sh
RUN chmod 400 /labkeypair.pem

CMD [ "/run.sh" ]