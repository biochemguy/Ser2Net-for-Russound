ARG BUILD_FROM
FROM $BUILD_FROM

# Install ser2net package
RUN apk add --no-cache ser2net

# Copy data for add-on
COPY run.sh /
COPY ser2net.conf /etc/ser2net.conf
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
