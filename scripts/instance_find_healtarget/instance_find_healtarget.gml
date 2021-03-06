/// @description instance_find_healtarget(object)
/// @param object
//
//  Returns the nearest instance of an object whose local
//  variable "team" has a different value than the calling
//  instance, or noone if no instance is found.
//
//      object      object to look for (or all), real
//
/// GMLscripts.com/license
{
    var ds,selectedd;
    ds = ds_priority_create();
    ds_priority_add(ds,noone,100000000);
    with (argument0) {
        if (team = other.team) and hp<f_mhp {
            ds_priority_add(ds,id,point_distance(x,y,other.x,other.y));
        }
    }
    selectedd = ds_priority_find_min(ds);
    ds_priority_destroy(ds);
    return selectedd;
}
