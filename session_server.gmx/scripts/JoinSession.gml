var socket = argument0; //we request a socket id so we can join a player in a channel
var sessionID = argument1; //we pass an id of the session
var ds_map_id = FindPlayer(socket);

var session = ds_map_find_value(ds_map_id, "Channel_ID");
if(session >-1) {
show_message("there was a bug, player was already in channel");
}
else  {
if(ds_map_find_value(sessionID, "ChannelCurrentSlots") < ds_map_find_value(sessionID, "ChannelSlots")) {
ds_map_replace(ds_map_id, "Channel_ID", sessionID );
ds_map_add_list(sessionID, "Players", socket);
ds_map_add(sessionID,"ChannelCurrentSlots", ds_map_find_value(sessionID, "ChannelCurrentSlots")+1);
}
else {

show_message("A player tried to join in a full channel");
}
}