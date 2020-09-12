#
#>Applies animation selected keyframe
# Input: anim_data; current_keyframe; $_get_tick; $_get_part;
# Output: 
# API: $_delete_keyframe 1 -> delete keyframe
function anim_edit:get_anim_keyframe_part
execute store result storage anim:editor current_keyframe.tick int 1 run scoreboard players get $_get_tick _anim
# execute store result storage anim:editor current_keyframe.part int 1 run scoreboard players get $_get_part _anim
execute unless data storage anim:editor current_keyframe.extra.invisible unless data storage anim:editor current_keyframe.extra.marker unless data storage anim:editor current_keyframe.extra.arms unless data storage anim:editor current_keyframe.extra.small unless data storage anim:editor current_keyframe.value.head.x unless data storage anim:editor current_keyframe.value.head.y unless data storage anim:editor current_keyframe.value.head.z unless data storage anim:editor current_keyframe.value.body.x unless data storage anim:editor current_keyframe.value.body.y unless data storage anim:editor current_keyframe.value.body.z unless data storage anim:editor current_keyframe.value.r_arm.x unless data storage anim:editor current_keyframe.value.r_arm.y unless data storage anim:editor current_keyframe.value.r_arm.z unless data storage anim:editor current_keyframe.value.l_arm.x unless data storage anim:editor current_keyframe.value.l_arm.y unless data storage anim:editor current_keyframe.value.l_arm.z unless data storage anim:editor current_keyframe.value.r_leg.x unless data storage anim:editor current_keyframe.value.r_leg.y unless data storage anim:editor current_keyframe.value.r_leg.z unless data storage anim:editor current_keyframe.value.l_leg.x unless data storage anim:editor current_keyframe.value.l_leg.y unless data storage anim:editor current_keyframe.value.l_leg.z unless data storage anim:editor current_keyframe.value.rotation.x unless data storage anim:editor current_keyframe.value.rotation.y unless data storage anim:editor current_keyframe.value.rotation.z unless data storage anim:editor current_keyframe.value.pos.x unless data storage anim:editor current_keyframe.value.pos.y unless data storage anim:editor current_keyframe.value.pos.z run scoreboard players set $_delete_keyframe _anim 1
data modify storage anim:editor output_keyframes set value []
data modify storage anim:editor search_keyframes set from storage anim:editor anim_data_part
scoreboard players reset $_keyframe_found _anim
function anim_edit:set_anim_keyframe_loop
execute unless score $_keyframe_found _anim matches 1 unless score $_delete_keyframe _anim matches 1 run data modify storage anim:editor output_keyframes append from storage anim:editor current_keyframe
data remove storage anim:editor search_keyframes
data modify storage anim:editor anim_data_part set from storage anim:editor output_keyframes
#Save to anim_data
function anim_edit:set_anim_keyframes_part
#Save to animation
data modify storage anim:editor anim_data.compile set value [] 
function anim_edit:search_model
data remove storage anim:editor output_anim_data
data modify storage anim:editor search_anim_data set from entity @e[tag=anim_model_select,limit=1] ArmorItems[2].tag.animations
function anim_edit:set_anim_keyframes
data modify entity @e[tag=anim_model_select,limit=1] ArmorItems[2].tag.animations set from storage anim:editor output_anim_data
scoreboard players reset $_delete_keyframe _anim
# #>Compiles (UNUSED)
# scoreboard players operation @e[tag=anim_model_select] _anim_anim_id = @s _anim_anim_id
# data modify entity @e[tag=anim_model_select,limit=1] ArmorItems[2].tag.anim set from storage anim:editor anim_data.keyframes
# tag @e[tag=anim_model_select] add anim_part_search
# execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_part_search,limit=1] _anim_ida unless data entity @s ArmorItems[2] run data modify entity @s ArmorItems[2] set value {id:"minecraft:stone",Count:1b}
# execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_part_search,limit=1] _anim_ida run tag @s add anim_compile_end_api
# execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_part_search,limit=1] _anim_ida run scoreboard players reset @s _anim
# execute as @e[tag=anim_model_select] run function anim:model_start_loop
# execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_part_search,limit=1] _anim_ida run function anim:compiler/start
# tag @e[tag=anim_part_search] remove anim_part_search