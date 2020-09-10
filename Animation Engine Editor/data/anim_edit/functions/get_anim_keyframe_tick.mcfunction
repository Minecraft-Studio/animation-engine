#
#>Returns animation selected keyframe
# Input: anim_data_part; $_get_tick;
# Output: anim:editor current_keyframe
data remove storage anim:editor current_keyframe
scoreboard players reset $_got_id _anim
execute unless data storage anim:editor search_keyframes run data modify storage anim:editor search_keyframes set from storage anim:editor anim_data_part
execute store result score $_got_tick _anim run data get storage anim:editor search_keyframes[0].tick
execute if score $_get_tick _anim = $_got_tick _anim run data modify storage anim:editor current_keyframe set from storage anim:editor search_keyframes[0]
data remove storage anim:editor search_keyframes[0]

execute if data storage anim:editor search_keyframes[0] unless data storage anim:editor current_keyframe run function anim_edit:get_anim_keyframe_tick
data remove storage anim:editor search_keyframes
