// Description:
//  This is just a simple script to test interaction with the bot

module.exports = function(robot) {
    robot.respond(/check status/i, function(msg){
       robot.emit('slack.attachment', {
           message: msg.message,
           content: {
               color: "good",
               text: "Working as expected!"
           }
       })
    });
};