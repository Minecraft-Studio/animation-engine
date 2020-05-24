scoreboard players set $show_menu _anim 3
scoreboard players set $name_id _anim 0
scoreboard players reset $_is_done _anim
kill @e[type=armor_stand,tag=anim_menu,tag=!anim_menu_main]
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"Create a new model","color":"gray","underlined":true}',Tags:["anim_menu","anim_menu0","anim_menu_unsel"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'["",{"text":"Model name: ","color":"aqua"},{"text":"(check chat)","color":"red"}]',Tags:["anim_menu","anim_menu1","anim_menu_unsel"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Settings]","color":"gray"}',Tags:["anim_menu","anim_menu2"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"List of connected parts:","color":"aqua"}',Tags:["anim_menu","anim_menu3","anim_menu_unsel"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"","color":"gray"}',Tags:["anim_menu","anim_menu4","anim_menu_list"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"","color":"gray"}',Tags:["anim_menu","anim_menu5","anim_menu_list"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"","color":"gray"}',Tags:["anim_menu","anim_menu8","anim_menu_list"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"","color":"gray"}',Tags:["anim_menu","anim_menu9","anim_menu_list"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"","color":"gray"}',Tags:["anim_menu","anim_menu10","anim_menu_list"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"","color":"gray"}',Tags:["anim_menu","anim_menu11","anim_menu_list"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"","color":"gray"}',Tags:["anim_menu","anim_menu12","anim_menu_list"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Next]","color":"green"}',Tags:["anim_menu","anim_menu6"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Back]","color":"red"}',Tags:["anim_menu","anim_menu7"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[>]","color":"yellow"}',Tags:["anim_menu","anim_menu13"]}
#load the list
function anim:gui/new/run/change_list1


execute as @p[tag=anim_user] at @s if block ~ ~ ~ air run scoreboard players set $_sign_placed _anim 1
execute as @p[tag=anim_user] at @s if data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.name if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Model name: ","color":"aqua"},{"nbt":"ArmorItems[2].tag.anim.name","entity":"@e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1]","color":"green"}]'}
execute as @p[tag=anim_user] at @s if data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.name run data modify entity @e[type=armor_stand,tag=anim_menu1,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
scoreboard players reset $_sign_placed _anim