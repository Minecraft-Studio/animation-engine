#>Load data on to armor stands
execute as @p[tag=anim_user] at @s if block ~ ~ ~ air run scoreboard players set $_sign_placed _anim 1

# X to Y ticks end points
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

#Anim parts shown
scoreboard players operation $_tmp_anim_page _anim = $anim_page _anim
scoreboard players reset $_tmp_anim_exists _anim
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_tmp_anim_page _anim run scoreboard players set $_tmp_anim_exists _anim 1 
execute as @p[tag=anim_user] at @s if score $_tmp_anim_exists _anim matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$_tmp_anim_page","objective":"_anim"},"color":"aqua"}'}
execute as @p[tag=anim_user] at @s unless score $_tmp_anim_exists _anim matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$_tmp_anim_page","objective":"_anim"},"color":"gray"}'}
data modify entity @e[type=armor_stand,tag=anim_menu1,limit=1] CustomName set value '{"text":"Err","color":"red"}'
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu1,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
scoreboard players add $_tmp_anim_page _anim 1
scoreboard players reset $_tmp_anim_exists _anim
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_tmp_anim_page _anim run scoreboard players set $_tmp_anim_exists _anim 1 
execute as @p[tag=anim_user] at @s if score $_tmp_anim_exists _anim matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$_tmp_anim_page","objective":"_anim"},"color":"aqua"}'}
execute as @p[tag=anim_user] at @s unless score $_tmp_anim_exists _anim matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$_tmp_anim_page","objective":"_anim"},"color":"gray"}'}
data modify entity @e[type=armor_stand,tag=anim_menu2,limit=1] CustomName set value '{"text":"Err","color":"red"}'
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu2,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
scoreboard players add $_tmp_anim_page _anim 1
scoreboard players reset $_tmp_anim_exists _anim
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_tmp_anim_page _anim run scoreboard players set $_tmp_anim_exists _anim 1 
execute as @p[tag=anim_user] at @s if score $_tmp_anim_exists _anim matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$_tmp_anim_page","objective":"_anim"},"color":"aqua"}'}
execute as @p[tag=anim_user] at @s unless score $_tmp_anim_exists _anim matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$_tmp_anim_page","objective":"_anim"},"color":"gray"}'}
data modify entity @e[type=armor_stand,tag=anim_menu3,limit=1] CustomName set value '{"text":"Err","color":"red"}'
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu3,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
scoreboard players add $_tmp_anim_page _anim 1
scoreboard players reset $_tmp_anim_exists _anim
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_tmp_anim_page _anim run scoreboard players set $_tmp_anim_exists _anim 1 
execute as @p[tag=anim_user] at @s if score $_tmp_anim_exists _anim matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$_tmp_anim_page","objective":"_anim"},"color":"aqua"}'}
execute as @p[tag=anim_user] at @s unless score $_tmp_anim_exists _anim matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$_tmp_anim_page","objective":"_anim"},"color":"gray"}'}
data modify entity @e[type=armor_stand,tag=anim_menu4,limit=1] CustomName set value '{"text":"Err","color":"red"}'
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu4,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
scoreboard players add $_tmp_anim_page _anim 1
scoreboard players reset $_tmp_anim_exists _anim
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_tmp_anim_page _anim run scoreboard players set $_tmp_anim_exists _anim 1 
execute as @p[tag=anim_user] at @s if score $_tmp_anim_exists _anim matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$_tmp_anim_page","objective":"_anim"},"color":"aqua"}'}
execute as @p[tag=anim_user] at @s unless score $_tmp_anim_exists _anim matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$_tmp_anim_page","objective":"_anim"},"color":"gray"}'}
data modify entity @e[type=armor_stand,tag=anim_menu5,limit=1] CustomName set value '{"text":"Err","color":"red"}'
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu5,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
scoreboard players add $_tmp_anim_page _anim 1
scoreboard players reset $_tmp_anim_exists _anim
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_tmp_anim_page _anim run scoreboard players set $_tmp_anim_exists _anim 1 
execute as @p[tag=anim_user] at @s if score $_tmp_anim_exists _anim matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$_tmp_anim_page","objective":"_anim"},"color":"aqua"}'}
execute as @p[tag=anim_user] at @s unless score $_tmp_anim_exists _anim matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$_tmp_anim_page","objective":"_anim"},"color":"gray"}'}
data modify entity @e[type=armor_stand,tag=anim_menu6,limit=1] CustomName set value '{"text":"Err","color":"red"}'
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu6,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
scoreboard players add $_tmp_anim_page _anim 1
scoreboard players reset $_tmp_anim_exists _anim
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_tmp_anim_page _anim run scoreboard players set $_tmp_anim_exists _anim 1 
execute as @p[tag=anim_user] at @s if score $_tmp_anim_exists _anim matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$_tmp_anim_page","objective":"_anim"},"color":"aqua"}'}
execute as @p[tag=anim_user] at @s unless score $_tmp_anim_exists _anim matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$_tmp_anim_page","objective":"_anim"},"color":"gray"}'}
data modify entity @e[type=armor_stand,tag=anim_menu7,limit=1] CustomName set value '{"text":"Err","color":"red"}'
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu7,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air

scoreboard players reset $_tmp_anim_exists _anim
scoreboard players reset $_tmp_anim_page _anim

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