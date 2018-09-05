/// @description set_position
var distance_hor=25 //distance_between_objects_horizontal
var distance_ver=10
var averageX=0
var averageY=0

for(z = 0; z < count_selected(); z+=1;)
{
    var xrow=0 
    var yrow=0
    var ll=global.unit[floor(count_selected()/2)]
    var ff=global.unit[z]
    if ff.team=GAME.team
    {
     //start position
     global.row_x=clamp(count_selected()-1,0,4)
     global.row_y=clamp((count_selected()-1)/6,0,10)
     if count_selected()<=5 {}
     if count_selected()>5  {if z>=5  {xrow=-5  yrow=1  }}    
     if count_selected()>10 {if z>=10 {xrow=-10 yrow=2  }}
     if count_selected()>15 {if z>=15 {xrow=-15 yrow=3  }} 
     if count_selected()>20 {if z>=20 {xrow=-20 yrow=4  }}        
     if count_selected()>25 {if z>=25 {xrow=-25 yrow=5  }} 
     if count_selected()>30 {if z>=30 {xrow=-30 yrow=6  }} 
     if count_selected()>35 {if z>=35 {xrow=-35 yrow=7  }}
     if count_selected()>40 {if z>=40 {xrow=-40 yrow=8  }}
     if count_selected()>45 {if z>=45 {xrow=-45 yrow=9  }}
     if count_selected()>50 {if z>=50 {xrow=-50 yrow=10 }}
 
     ff.walkx=((mouse_x-((distance_hor*global.row_x)/2))+((z+xrow)*(distance_hor)))
     ff.walky=((mouse_y-((distance_ver*global.row_y)/2))+(yrow*distance_ver))
     
     //ff.walkx=mouse_x+((z+xrow)*(distance_hor))    
     //ff.walky=mouse_y+(yrow*(distance_ver))
     
     //ff.walkx=ll.walkx+((z+xrow)*(distance_hor))
     //ff.walky=ll.walky+((yrow)*(distance_ver))
     ff.finish=false
    }
}

