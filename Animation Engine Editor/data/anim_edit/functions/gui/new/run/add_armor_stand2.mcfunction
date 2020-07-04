tag @s remove anim_add
tag @s remove anim_add_new
tag @s add anim_part
tp @s @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1]
scoreboard players operation @s _anim_ida = @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] _anim_ida
scoreboard players operation @s _anim_idb = $_set_id _anim
execute if entity @e[type=armor_stand,tag=anim_sel,tag=anim_main,tag=anim_new] run tag @s add anim_new