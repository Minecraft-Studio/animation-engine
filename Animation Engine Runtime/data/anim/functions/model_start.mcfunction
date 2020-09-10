tag @s add anim_part_search
data modify storage anim:runtime compile_import set from entity @s ArmorItems[2].tag.anim
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_part_search,limit=1] _anim_ida unless score @s _anim matches 1.. run data modify entity @s ArmorItems[2].tag.anim set from storage anim:runtime compile_import
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_part_search,limit=1] _anim_ida unless score @s _anim matches 1.. run function anim:setup_anim
tag @s remove anim_part_search
data remove entity @s ArmorItems[2].tag.anim
data remove storage anim:runtime compile_import