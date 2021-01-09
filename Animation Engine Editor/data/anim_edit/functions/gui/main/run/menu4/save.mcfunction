function anim_edit:search_model
data modify entity @e[tag=anim_main_select,limit=1] Marker set value 1b
data modify entity @e[tag=anim_main_select,limit=1] Glowing set value 0b
tag @e[tag=anim_main_select] remove anim_main_new
scoreboard players set @s _anim_menu 5
function anim_edit:gui/main/load