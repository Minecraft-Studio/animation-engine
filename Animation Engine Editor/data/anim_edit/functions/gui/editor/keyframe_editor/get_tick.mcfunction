#
#>Returns data of tick
# Input: $_get_tick; $_get_part;
# Output: anim:editor got_tick;
data remove storage anim:editor got_tick
data modify storage anim:editor get_tick set from storage anim:editor keyframes
function anim_edit:gui/editor/keyframe_editor/get_tick_loop
scoreboard players reset $_api_get_tick _anim
data remove storage anim:editor get_tick