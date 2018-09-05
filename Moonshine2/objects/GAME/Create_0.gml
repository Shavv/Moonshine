/// @description init
randomize()
team=0
///standard variables
global.selected=false
global.selected_units=0
global.leader=-1
global.maxselected=50
global.mouse_ui=false
global.mouse_skill=false
global.troop_direction=0
global.row_x=0
global.row_y=0
global.formation=0 //free //square *WORK IN PROGRESS*
global.target=noone
global.agro_range=0
global.mouse_over=noone
global.move_speed=0
global.mousex=mouse_x
global.mousey=mouse_y
global.clampmap=false

///unit list
for (i=0; i<global.maxselected ; i+=1)
{
 global.unit[i]=-1
}

//locals
oldinst=noone
unt=noone
xx=0
yy=0
xxx=0
yyy=0
name=""
created=false
inst=noone
mouseinst=noone

//position

///UI & UI positions
UI=true

///recource window
UI_x_recources=10
UI_y_recources=10
UI_width_recources=500
UI_height_recources=30


///map
UI_width_map=200
UI_height_map=200
UI_x_map=window_get_width()-(UI_width_map+(10))
UI_y_map=10
UI_xscale_map=UI_width_map/room_width
UI_yscale_map=UI_height_map/room_height

///summary
UI_width_summary=800
UI_height_summary=120
UI_x_summary=10//(window_get_width()/2)-(UI_width_summary/2)
UI_y_summary=window_get_height()-(UI_height_summary+(10))

///sumary potrait
UI_width_portrait=100
UI_height_portrait=100
UI_x_portrait=UI_x_summary+10
UI_y_portrait=UI_y_summary+10


/////////////////////////////////////////////////////////////////////////
//Skill slots
UI_width_skill=50
UI_height_skill=50

///1st skill
UI_skill[0]=-1
UI_x_skill[0]=UI_x_portrait+UI_width_portrait+10
UI_y_skill[0]=UI_y_portrait

///2nd skill
UI_skill[1]=-1
UI_x_skill[1]=UI_x_skill[0]+UI_width_skill+10
UI_y_skill[1]=UI_y_skill[0]

//3rd skill
UI_skill[2]=-1
UI_x_skill[2]=UI_x_skill[1]+UI_width_skill+10
UI_y_skill[2]=UI_y_skill[0]

//4th skill
UI_skill[3]=-1
UI_x_skill[3]=UI_x_skill[2]+UI_width_skill+10
UI_y_skill[3]=UI_y_skill[0]





////////////////////////////////////////////////////////
///sumary healthbar
UI_width_bar=UI_width_skill*4+30
UI_height_bar=15

UI_x_healthbar=UI_x_skill[0]
UI_y_healthbar=UI_y_skill[0]+UI_height_skill+10

UI_x_manabar=UI_x_healthbar
UI_y_manabar=UI_y_healthbar+UI_height_bar+10


//////////////////////////////////////////////////////
//skill spell section
UI_width_section=UI_width_skill*4+30+20
UI_height_section=UI_height_skill+20

UI_x_section=UI_x_portrait+UI_width_portrait
UI_y_section=UI_y_summary-UI_height_section-10

//skill section link
UI_section_link=-1





////section option skills

///1st section skill
UI_section_skill[0]=-1
UI_x_section_skill[0]=UI_x_skill[0]
UI_y_section_skill[0]=UI_y_section+10

///2nd section skill
UI_section_skill[1]=-1
UI_x_section_skill[1]=UI_x_skill[1]
UI_y_section_skill[1]=UI_y_section+10

//3rd section skill
UI_section_skill[2]=-1
UI_x_section_skill[2]=UI_x_skill[2]
UI_y_section_skill[2]=UI_y_section+10

//4th section skill
UI_section_skill[3]=-1
UI_x_section_skill[3]=UI_x_skill[3]
UI_y_section_skill[3]=UI_y_section+10



///create instances
instance_create(0,0,BACKGROUND)
instance_create(0,0,SHADOW)
//instance_create(0,0,LIGHTNING)


///colors
c_health=make_color_rgb(1, 203, 0)//(108, 252, 103)
c_enemy=c_red
c_friendly=make_color_rgb(254, 113, 0)
c_mana=make_color_rgb(17, 139, 245)

///Skills
skill_init()

