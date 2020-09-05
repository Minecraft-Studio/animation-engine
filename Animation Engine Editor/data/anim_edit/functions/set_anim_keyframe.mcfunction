#
#>Applies animation selected keyframe
# Input: anim_data; cuurent_keyframe; $_get_tick; $_get_part;
# Output: 
execute store result storage anim:editor current_keyframe.tick int 1 run scoreboard players get $_get_tick _anim
execute store result storage anim:editor current_keyframe.part int 1 run scoreboard players get $_get_part _anim
data remove storage anim:editor output_keyframes
data modify storage anim:editor search_keyframes set from storage anim:editor anim_data.keyframes
scoreboard players reset $_keyframe_found _anim
function anim_edit:set_anim_keyframe_loop
execute unless score $_keyframe_found _anim matches 1 run data modify storage anim:editor output_keyframes append from storage anim:editor current_keyframe
data remove storage anim:editor search_keyframes
data modify storage anim:editor anim_data.keyframes set from storage anim:editor output_keyframes
#Save to animation
function anim_edit:search_model
data remove storage anim:editor output_anim_data
data modify storage anim:editor search_anim_data set from entity @e[tag=anim_model_select,limit=1] ArmorItems[2].tag.animations
function anim_edit:set_anim_keyframes
data modify entity @e[tag=anim_model_select,limit=1] ArmorItems[2].tag.animations set from storage anim:editor output_anim_data