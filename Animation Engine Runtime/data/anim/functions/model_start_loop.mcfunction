data modify storage anim:runtime compile_import set from entity @s ArmorItems[2].tag.anim[0]
scoreboard players reset $_got_part _anim
execute store result score $_got_part _anim run data get storage anim:runtime compile_import.part
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_part_search,limit=1] _anim_ida if score @s _anim_idb = $_got_part _anim unless score @s _anim matches 1.. run data modify entity @s ArmorItems[2].tag.anim set from storage anim:runtime compile_import.data
data remove storage anim:runtime compile_import
data remove entity @s ArmorItems[2].tag.anim[0]
execute if data entity @s ArmorItems[2].tag.anim[0] run function anim:model_start_loop
