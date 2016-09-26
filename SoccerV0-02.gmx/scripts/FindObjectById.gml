var object = argument0;
var _id = argument1;


for(var i=0; i < instance_number(object); i++) {
    
    var obj = instance_find(object, i);
    if(obj.my_id == _id) {
    
       return obj;
    
    }


}
