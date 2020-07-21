data modify storage anim:editor result_comp append from storage anim:editor result_comp_tick_old
data remove storage anim:editor result_comp_tick
data remove storage anim:editor result_comp_tick_old
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_get_part _anim run tellraw @p ["anim: ",{"nbt":"result_comp","storage":"anim:editor","color":"yellow"}]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_get_part _anim run tellraw @p ["anim: ",{"nbt":"ArmorItems[2].tag.anim","entity":"@s","color":"red"}]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_get_part _anim run data modify entity @s ArmorItems[2].tag.anim set from storage anim:editor result_comp
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_get_part _anim unless data storage anim:editor result_comp run data remove entity @s ArmorItems[2].tag.anim
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_get_part _anim run tellraw @p ["anim: ",{"nbt":"ArmorItems[2].tag.anim","entity":"@s","color":"green"}]
tellraw @p ["anim: ",{"score":{"name": "$_get_part","objective": "_anim"}}]
data remove storage anim:editor result_comp
scoreboard players set $_get_tick _anim 0
scoreboard players add $_get_part _anim 1