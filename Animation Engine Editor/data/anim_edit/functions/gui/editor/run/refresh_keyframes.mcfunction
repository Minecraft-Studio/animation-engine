execute as @p[tag=anim_user] at @s if block ~ ~ ~ air run scoreboard players set $_sign_placed _anim 1

execute as @p[tag=anim_user] at @s unless entity @e[type=armor_stand,tag=anim_menu8,limit=1,tag=anim_sel_menu] if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$page","objective":"_anim"},"color":"gray"}'}
execute as @p[tag=anim_user] at @s if entity @e[type=armor_stand,tag=anim_menu8,limit=1,tag=anim_sel_menu] if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$page","objective":"_anim"},"color":"white"}'}
data modify entity @e[type=armor_stand,tag=anim_menu8,limit=1] CustomName set value '{"text":"Err","color":"red"}'
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu8,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
scoreboard players add $page _anim 19
execute as @p[tag=anim_user] at @s unless entity @e[type=armor_stand,tag=anim_menu9,limit=1,tag=anim_sel_menu] if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$page","objective":"_anim"},"color":"gray"}'}
execute as @p[tag=anim_user] at @s if entity @e[type=armor_stand,tag=anim_menu9,limit=1,tag=anim_sel_menu] if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$page","objective":"_anim"},"color":"white"}'}
data modify entity @e[type=armor_stand,tag=anim_menu9,limit=1] CustomName set value '{"text":"Err","color":"red"}'
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu9,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
scoreboard players remove $page _anim 19

scoreboard players reset $_sign_placed _anim

function anim_edit:gui/editor/run/refresh_page
scoreboard players operation $_tmp_old_pg_ _anim = $_tmp_old_pg _anim
scoreboard players operation $_tmp_old_pg_ _anim -= $page _anim
scoreboard players operation $_sel_col _anim += $_tmp_old_pg_ _anim
scoreboard players reset $_tmp_old_pg_ _anim
scoreboard players reset $_tmp_old_pg _anim
execute unless score $_sel_col _anim matches 0..19 run scoreboard players reset $_sel_row _anim
execute unless score $_sel_col _anim matches 0..19 run scoreboard players reset $_sel_col _anim
function anim_edit:gui/editor/run/search/load_all_keyframes/start