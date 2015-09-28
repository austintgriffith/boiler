FROM ritual
MAINTAINER Austin Griffith <me@austingriffith.com>

# Install / update
RUN apt-get update -y;apt-get upgrade -y;apt-get clean

ADD package.json /root/package.json
RUN cd /root;npm install

#port 8888 for web and port 22 for ssh
EXPOSE 8888 22

#wire in a startup script
ADD go.sh /var/www/go.sh

CMD /var/www/go.sh > /var/www/go.txt
