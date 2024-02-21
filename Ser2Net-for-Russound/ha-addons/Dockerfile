ARG BUILD_FROM
FROM $BUILD_FROM

# Install ser2net package
RUN apk add --no-cache ser2net

# Copy data for add-on
COPY run.sh /

#ADD ser2net.conf /etc/ser2net.conf

EXPOSE 3333
# Append the ser2net configuration to /etc/ser2net.conf
RUN echo "BANNER:banner:\r\nser2net port \\p device \\d [\s] (Debian GNU/Linux)\r\n\r\n" > /etc/ser2net.conf
RUN echo -e "3333:telnet:0:/dev/ttyUSB0:19200 8DATABITS NONE 1STOPBIT banner" >> /etc/ser2net.conf

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
