#Save
execute if score $_tmp_old_pg _anim matches 0.. run scoreboard players operation $_tmp_new_pg _anim = $page _anim
execute if score $_tmp_old_pg _anim matches 0.. run scoreboard players operation $page _anim = $_tmp_old_pg _anim
#execute if score $_tmp_old_pg _anim matches 0.. as @e[type=armor_stand,tag=anim_menu,tag=anim_editor,tag=anim_editor_sel,limit=1] run function anim_edit:gui/editor/run/save_keyframe
execute if score $_tmp_old_pg _anim matches 0.. run scoreboard players operation $page _anim = $_tmp_new_pg _anim
scoreboard players reset $_tmp_new_pg _anim
#execute unless score $_tmp_old_pg _anim matches 0.. as @e[type=armor_stand,tag=anim_menu,tag=anim_editor,tag=anim_editor_sel,limit=1] run function anim_edit:gui/editor/run/save_keyframe

#refresh page
execute as @s at @s if block ~ ~ ~ air run scoreboard players set $_sign_placed _anim 1

execute as @s at @s unless entity @e[type=armor_stand,tag=anim_menu86,limit=1,tag=anim_sel_menu] if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$page","objective":"_anim"},"color":"gray"}'}
execute as @s at @s if entity @e[type=armor_stand,tag=anim_menu86,limit=1,tag=anim_sel_menu] if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$page","objective":"_anim"},"color":"white"}'}
data modify entity @e[type=armor_stand,tag=anim_menu86,limit=1] CustomName set value '{"text":"Err","color":"red"}'
execute as @s at @s run data modify entity @e[type=armor_stand,tag=anim_menu86,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @s at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air

scoreboard players reset $_sign_placed _anim