#
#>Returns animation selected keyframe
# Input: anim_data; $_get_tick; $_get_part;
# Output: anim:editor current_keyframe
data remove storage anim:editor current_keyframe
scoreboard players reset $_got_id _anim
execute unless data storage anim:editor search_keyframes run data modify storage anim:editor search_keyframes set from storage anim:editor anim_data.keyframes
execute store result score $_got_tick _anim run data get storage anim:editor search_keyframes[0].tick
execute store result score $_got_part _anim run data get storage anim:editor search_keyframes[0].part
execute if score $_get_tick _anim = $_got_tick _anim if score $_get_part _anim = $_got_part _anim run data modify storage anim:editor current_keyframe set from storage anim:editor search_keyframes[0]
data remove storage anim:editor search_keyframes[0]

execute if data storage anim:editor search_keyframes[0] unless data storage anim:editor current_keyframe run function anim_edit:get_anim_keyframe
data remove storage anim:editor search_keyframes
