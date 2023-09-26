FROM alpine:latest


# Install wget for downloading the update package
RUN apk add --no-cache wget nmap nmap-scripts bash curl openssh-client tcpdump netcat-openbsd

ADD /etc /ETCTESTI

# Copy the update script to the container
COPY updpackage.sh /updpackage.sh
RUN chmod +x /updpackage.sh

# Set the update script as the default command for the container
CMD ["/updpackage.sh"]
