#
#>Get list of selected keyframes
#Input: @s;
#Output: anim:editor open_keyframes
scoreboard players reset $_got_p_id _anim
data remove storage anim:editor open_keyframes
execute unless data storage anim:editor search_for_opened_keyframes[0] run data modify storage anim:editor search_for_opened_keyframes set from storage anim:editor selected_keyframes
execute store result score $_got_p_id _anim run data get storage anim:editor search_for_opened_keyframes[0].id
execute if score $_got_p_id _anim = @s _anim_id_player run data modify storage anim:editor open_keyframes set from storage anim:editor search_for_opened_keyframes[0]
data remove storage anim:editor search_for_opened_keyframes[0]

execute if data storage anim:editor search_for_opened_keyframes[0] unless data storage anim:editor open_keyframes run function anim_edit:gui/editor/keyframe_editor/get_sel_keyframes
data remove storage anim:editor search_for_opened_keyframes