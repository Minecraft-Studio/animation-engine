scoreboard players set $name_id _anim 0
scoreboard players set $name_menu _anim 0
execute as @p[tag=anim_user] at @s if block ~ ~ ~ air run scoreboard players set $_sign_placed _anim 1
execute as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Armor Stand name: ","color":"aqua"},{"nbt":"name","storage":"anim:anim","color":"green"}]'}
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu4,limit=1] CustomName set value '["",{"text":"Armor Stand name: ","color":"aqua"},{"text":"Error, please move to a free block","color":"red"}]'
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu4,limit=1] CustomName set from block ~ ~ ~ Text1
execute if score $_edit_armor_stand _anim matches 1 as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.armor_stand[0].name set from storage anim:anim name
execute if score $_edit_armor_stand _anim matches 2 as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.armor_stand[1].name set from storage anim:anim name
execute if score $_edit_armor_stand _anim matches 3 as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.armor_stand[2].name set from storage anim:anim name
execute if score $_edit_armor_stand _anim matches 4 as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.armor_stand[3].name set from storage anim:anim name
execute if score $_edit_armor_stand _anim matches 5 as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.armor_stand[4].name set from storage anim:anim name
execute if score $_edit_armor_stand _anim matches 6 as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.armor_stand[5].name set from storage anim:anim name
execute if score $_edit_armor_stand _anim matches 7 as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.armor_stand[6].name set from storage anim:anim name
execute if score $_edit_armor_stand _anim matches 8 as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.armor_stand[7].name set from storage anim:anim name
execute if score $_edit_armor_stand _anim matches 9 as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.armor_stand[8].name set from storage anim:anim name
execute if score $_edit_armor_stand _anim matches 10 as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.armor_stand[9].name set from storage anim:anim name
execute if score $_edit_armor_stand _anim matches 11 as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.armor_stand[10].name set from storage anim:anim name
execute if score $_edit_armor_stand _anim matches 12 as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.armor_stand[11].name set from storage anim:anim name
execute if score $_edit_armor_stand _anim matches 13 as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.armor_stand[12].name set from storage anim:anim name
execute if score $_edit_armor_stand _anim matches 14 as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.armor_stand[13].name set from storage anim:anim name
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
data modify storage anim:anim save_armor_stand_name set from storage anim:anim name
data remove storage anim:anim name
scoreboard players reset $_sign_placed _anim
scoreboard players set $_done _anim 1
data merge entity @e[type=armor_stand,tag=anim_menu,tag=anim_menu14,limit=1] {CustomName:'{"text":"[Finish]","color":"green"}'}
