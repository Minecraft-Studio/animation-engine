tag @s add anim_part_search
execute as @e[tag=anim_part] unless data entity @s ArmorItems[2].id run data modify entity @s ArmorItems[2] set value {id:"minecraft:stone",Count:1b,tag:{}}
function anim:model_start_loop
tag @s remove anim_part_search
data remove entity @s ArmorItems[2].tag.anim