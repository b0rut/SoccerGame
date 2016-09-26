var session_id = argument0;

for(var i=0; i < ds_list_size(global.m_sessions); i++) {

var session_map = ds_list_find_value(global.m_sessions, i);
if(!is_undefined(session_map)) {
if(ds_map_find_value(session_map, "ChannelID") == session_id) {

var session_map_return = session_map;
return session_map;
}

}
}