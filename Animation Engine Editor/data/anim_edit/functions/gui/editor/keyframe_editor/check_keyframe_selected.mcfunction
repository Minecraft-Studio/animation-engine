#
#>Returns if keyframe already selected and removes it from list
# Input: open_keyframes; $_sel_col; $_sel_row
# Output: $_keyf_selected; output_keyframe_selected
scoreboard players reset $_got_tick _anim
scoreboard players reset $_got_part _anim
scoreboard players reset $_got_p_id _anim
execute unless data storage anim:editor search_keyframe_selected run data modify storage anim:editor output_keyframe_selected set value []
execute unless data storage anim:editor search_keyframe_selected run scoreboard players reset $_keyf_selected _anim
execute unless data storage anim:editor search_keyframe_selected run data modify storage anim:editor search_keyframe_selected set from storage anim:editor open_keyframes
execute store result score $_got_tick _anim run data get storage anim:editor search_keyframe_selected[0].tick
execute store result score $_got_part _anim run data get storage anim:editor search_keyframe_selected[0].part
scoreboard players reset $_keyf_found _anim
execute if score $_got_tick _anim = $_sel_col _anim if score $_got_part _anim = $_sel_row _anim run scoreboard players set $_keyf_found _anim 1
execute if score $_got_tick _anim = $_sel_col _anim if score $_got_part _anim = $_sel_row _anim run scoreboard players set $_keyf_selected _anim 1
execute unless score $_keyf_found _anim matches 1 run data modify storage anim:editor output_keyframe_selected append from storage anim:editor search_keyframe_selected[0]
data remove storage anim:editor search_keyframe_selected[0]
execute if data storage anim:editor search_keyframe_selected[0] run function anim_edit:gui/editor/keyframe_editor/check_keyframe_selected
