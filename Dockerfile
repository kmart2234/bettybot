FROM node:10.1.0


MAINTAINER Kevin Martin <21.kmart@gmail.com>


RUN mkdir -p /opt/bettybot
RUN mkdir -p /opt/bettybot/scripts
RUN mkdir -p /opt/docker/data


# Copy files to the directory
COPY *.* /opt/bettybot/
COPY ./scripts/*.* /opt/bettybot/scripts/
COPY .env /opt/bettybot/


# Install the dependancies
RUN cd /opt/bettybot && npm install


# Set the working directory to /opt/bot
WORKDIR /opt/bettybot


# Start the bot
CMD ["npm", "start"]