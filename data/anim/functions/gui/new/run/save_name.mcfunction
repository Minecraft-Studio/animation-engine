scoreboard players set $name_id _anim 0
scoreboard players set $name_menu _anim 0
execute as @p[tag=anim_user] at @s if block ~ ~ ~ air run scoreboard players set $_sign_placed _anim 1
execute as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Model name: ","color":"aqua"},{"nbt":"name","storage":"anim:anim","color":"green"}]'}
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu1,limit=1] CustomName set value '["",{"text":"Model name: ","color":"aqua"},{"text":"Error, please move to a free block","color":"red"}]'
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu1,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.name set from storage anim:anim name
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_sel,limit=1] CustomName set from storage anim:anim name
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
data modify storage anim:anim save_name set from storage anim:anim name
data remove storage anim:anim name
scoreboard players reset $_sign_placed _anim
