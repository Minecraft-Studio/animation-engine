#start the load a specific keyframe, col: $_key_col row: $_key_row, search loop
data modify storage anim:editor search set from storage anim:editor keyframes
data remove storage anim:editor current_keyframe
function anim:gui/editor/run/search/load_keyframe/loop
