#>Sets Custom Anim Model name 
data modify entity @e[tag=anim_main_select,limit=1] CustomName set from storage anim:editor anim_model_cname
# Converts string to JSON format using sign, unless player is not in a air block
execute as @p[tag=anim_user] at @s if block ~ ~ ~ air run scoreboard players set $_sign_placed _anim 1
execute as @p[tag=anim_user] at @s unless block ~ ~ ~ air run scoreboard players set $_curr_air _anim 1

execute as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'{"nbt":"anim_model_cname","storage":"anim:editor"}'}
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_main_select,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air

execute if score $_sign_placed _anim matches 1 run data remove storage anim:editor anim_model_cname
scoreboard players reset $_sign_placed _anim

function anim_edit:gui/main/load