#
#>Deselects all opened keyframes
# Input:
# Output:
scoreboard players reset $_got_p_id _anim
execute unless data storage anim:editor input_selected_keyframes run data modify storage anim:editor output_selected_keyframes set value []
execute unless data storage anim:editor input_selected_keyframes run data modify storage anim:editor input_selected_keyframes set from storage anim:editor selected_keyframes
execute store result score $_got_p_id _anim run data get storage anim:editor input_selected_keyframes[0].id
execute unless score $_got_p_id _anim = @s _anim_id_player run data modify storage anim:editor output_selected_keyframes append from storage anim:editor input_selected_keyframes[0]
data remove storage anim:editor input_selected_keyframes[0]

execute if data storage anim:editor input_selected_keyframes[0] run function anim_edit:gui/editor/keyframe_editor/deselect_all_keyframes
data remove storage anim:editor input_selected_keyframes
data modify storage anim:editor selected_keyframes set from storage anim:editor output_selected_keyframes
data remove storage anim:editor output_selected_keyframes