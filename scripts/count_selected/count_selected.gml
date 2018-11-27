/// @description count_selected()
var i;
var counted=0;
//////////////////////////////////////
for (i=0; i<global.maxselected ; i+=1)
{
 if global.unit[i]!=-1 {counted++}
}
/////////////////
return (counted)
