var buffer = argument0


sessionid = buffer_read(buffer, buffer_s8);
sessionname = buffer_read(buffer, buffer_string);
var join_instance = instance_create(50, y+(sessionid*50), obj_session_join);
join_instance.session_id = sessionid;
join_instance.session_name = sessionname;
