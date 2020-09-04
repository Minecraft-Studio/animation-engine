#
#>Check if tick is selected; returns player's ID
#Input: $_get_tick; $_get_part;
#Output: $_got_p_id;
data modify storage anim:editor check_tick_sel set from storage anim:editor selected_keyframes
function anim_edit:gui/editor/keyframe_editor/check_if_sel_tick_loop
scoreboard players reset $_got_anim _anim
scoreboard players reset $_got_part _anim
scoreboard players reset $_got_tick _anim
data remove storage anim:editor check_tick_sel

