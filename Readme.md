# bettyBot

## Description
bettyBot is for developing and testing a workflow used to deploy Hubot into a Docker container and connect it to Slack.

## Prerequisites
 * Log into your Docker Engine server
  ```
  ssh root@yourDockerServer
  ```
  
 * Create a directory to clone the repository into and switch to that directory
  ```
  mkdir -p /opt/docker/bettybot
  cd /opt/docker/bettybot
  ```

## Installation
 * SSH to your Docker server
 ```
 ssh root@yourDockerDeployServer
 ```
 
 * Install git on your Docker server
 ```
 yum install -y git
 ```
 
 * Create a Docker build directory and switch to that directory
 ```
 mkdir -p /opt/dockerBuild
 cd /opt/dockerBuild
 ```
 
 * Clone the bettyBot repository
 ```
 git clone https://github.com/kmart2234/bettybot.git
 ```
 
 * Create the .private directory 
 ```
 mkdir .private
 ```
 
 * Create a .bashrc in your _/opt/dockerBuild/bettybot_ directory. 
 ```
 touch .bashrc
 ```
 
 * Edit the new _/opt/dockerBuild/bettybot/.bashrc_ file
 ```
 export DEV_ENV_PW=yourDevPassword
 export PROD_ENV_PW=yourProdPassword
 ```
 
 * Create the .env file in your _/opt/dockerBuild/bettybot_ directory.
 ```
 touch .env
 ```
 
 * Populate the .env file
 ```
 HUBOT_SLACK_TOKEN=xoxb-yourBotApiToken
 HUBOT_SLACK_BOTNAME=bettybot
 ```
 
 * Build the Docker Image
 ```
 docker build -t bettybot:yourTag
 ```
 
 * Run your Docker container
 ```
 docker run -it --env-file=./.env bettybot:yourTag
 ```
 
 ## Using bettyBot
 This implementation includes the _hubot-pugme_ module which we can use for testing interactions with the bot.
 ```
 @bettybot pug me
 ```
 
 ## Testing
 This test is just to demonstrate the _hubot-test-helper_ module.
 ```
 npm test
 ```
 
 ## License
 MIT