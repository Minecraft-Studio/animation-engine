scoreboard players set $show_menu _anim 1
scoreboard players set $name_id _anim 0
kill @e[type=armor_stand,tag=anim_menu,tag=!anim_menu_main]
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"What would you like to do?","color":"aqua"}',Tags:["anim_menu","anim_menu0","anim_menu_unsel"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Settings]","color":"gray"}',Tags:["anim_menu","anim_menu1"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Create a new model]","color":"green"}',Tags:["anim_menu","anim_menu2"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Select a existing model]","color":"yellow"}',Tags:["anim_menu","anim_menu3"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Close Menu]","color":"red"}',Tags:["anim_menu","anim_menu4"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'["",{"text":"Animation Engine","color":"gray","underlined":true},{"text":" v1.0.0a1","color":"aqua"}]',Tags:["anim_menu","anim_menu5","anim_menu_unsel"]}
kill @e[type=armor_stand,tag=anim_new]
