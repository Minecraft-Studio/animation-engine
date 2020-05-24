execute as @p[tag=anim_user] at @s if block ~ ~ ~ air run scoreboard players set $_sign_placed _anim 1

execute as @p[tag=anim_user] at @s unless entity @e[type=armor_stand,tag=anim_menu86,limit=1,tag=anim_sel_menu] if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$_page","objective":"_anim"},"color":"gray"}'}
execute as @p[tag=anim_user] at @s if entity @e[type=armor_stand,tag=anim_menu86,limit=1,tag=anim_sel_menu] if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"score":{"name":"$_page","objective":"_anim"},"color":"white"}'}
data modify entity @e[type=armor_stand,tag=anim_menu86,limit=1] CustomName set value '{"text":"Err","color":"red"}'
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu86,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air

scoreboard players reset $_sign_placed _anim