var socket = argument0;
 // we must read the sockets id so we can later
//search if that player is already in channel and if not we connect him to a new channel
//(look script SessionJoint()
//first we create a database for our session

var session = ds_map_create();
var players = ds_list_create();
ds_map_add(session, "ChannelID", session_count);
ds_map_add(session, "ChannelOwner", socket); //we add an owner of the channel there
ds_map_add(session, "ChannelSlots", 4); // create 4 free slots in a channel
ds_map_add(session, "ChannelCurrentSlots", 0);
ds_map_add(session, "Players", players); // we add a fresh list of players in

 // unique ID for the session
ds_list_add(global.m_sessions, session);
ds_list_mark_as_map(global.m_sessions, ds_list_size(global.m_sessions)-1);

return session; // we get returned session map ID

//automaticly connects player to a server, when created
session_count+=1;