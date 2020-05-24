execute as @p[tag=anim_user] at @s if block ~ ~ ~ air run scoreboard players set $_sign_placed _anim 1
execute as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"[Boots ","color":"green"},{"nbt":"ArmorItems[0].id","entity":"@e[type=armor_stand,tag=anim_edit,tag=anim_part,limit=1]","color":"gray"},{"text":"]","color":"green"}]'}
execute as @p[tag=anim_user] at @s run data modify entity @s CustomName set value '["",{"text":"[Boots ","color":"green"},{"text":"Error, please move to a free block!","color":"dark_red"},{"text":"]","color":"green"}]'
execute unless data entity @e[type=armor_stand,tag=anim_edit,tag=anim_part,limit=1] ArmorItems[0].id run data modify entity @s CustomName set value '["",{"text":"[Boots ","color":"green"},{"text":"none","color":"gray"},{"text":"]","color":"green"}]'
execute at @p[tag=anim_user] if data entity @e[type=armor_stand,tag=anim_edit,tag=anim_part,limit=1] ArmorItems[0].id run data modify entity @s CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
scoreboard players reset $_sign_placed _anim
