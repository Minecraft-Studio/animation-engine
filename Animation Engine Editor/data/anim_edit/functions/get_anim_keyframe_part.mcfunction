#
#>Returns selected animation's keyframes from part
# Input: anim_data; $_get_part;
# Output: anim:editor anim_data_part
data remove storage anim:editor anim_data_part
execute unless data storage anim:editor search_keyframes run data modify storage anim:editor search_keyframes set from storage anim:editor anim_data.keyframes
execute store result score $_got_part _anim run data get storage anim:editor search_keyframes[0].part
execute if score $_get_part _anim = $_got_part _anim run data modify storage anim:editor anim_data_part set from storage anim:editor search_keyframes[0].data
data remove storage anim:editor search_keyframes[0]

execute if data storage anim:editor search_keyframes[0] unless data storage anim:editor anim_data_part run function anim_edit:get_anim_keyframe_part
data remove storage anim:editor search_keyframes
