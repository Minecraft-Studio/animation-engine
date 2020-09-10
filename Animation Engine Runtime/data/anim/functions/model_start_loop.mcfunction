data modify storage anim:runtime compile_import set from entity @s ArmorItems[2].tag.anim[0]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_part_search,limit=1] _anim_ida unless score @s _anim matches 1.. run data modify entity @s ArmorItems[2].tag.anim set from storage anim:runtime compile_import
