#
#>Sets animation keyframes (see set_anim_keyframe for setup)
# Input: @s _anim_anim_id; anim_data
# Output:
scoreboard players reset $_got_id _anim
execute store result score $_got_id _anim run data get storage anim:editor search_anim_data[0].animation_id
execute if score $_got_id _anim = @s _anim_anim_id run data modify storage anim:editor search_anim_data[0] set from storage anim:editor anim_data
data modify storage anim:editor output_anim_data append from storage anim:editor search_anim_data[0]
data remove storage anim:editor search_anim_data[0]

execute if data storage anim:editor search_anim_data[0] run function anim_edit:set_anim_keyframes
data remove storage anim:editor search_anim_data
