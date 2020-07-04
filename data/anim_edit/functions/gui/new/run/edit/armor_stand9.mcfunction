scoreboard players reset $_exists _anim
execute as @e[type=armor_stand,tag=anim_part,scores={_anim_idb=9}] if score @s _anim_ida = @e[type=armor_stand,tag=anim_sel,tag=anim_main,limit=1] _anim_ida run scoreboard players set $_exists _anim 1
scoreboard players set $_edit_armor_stand _anim 9
execute if score $_exists _anim matches 1 as @e[type=armor_stand,tag=anim_menu_main] at @p[tag=anim_user] run function anim_edit:gui/add/load
execute unless score $_exists _anim matches 1 as @e[type=armor_stand,tag=anim_menu_main] at @p[tag=anim_user] run function anim_edit:gui/add/load

