data modify storage anim:editor search set from storage anim:editor keyframes
data remove storage anim:editor result
scoreboard players set $_search_found _anim 0
scoreboard players operation $_tick_save _anim = $_sel_col _anim
scoreboard players operation $_tick_save _anim += $page _anim

function anim_edit:gui/editor/run/search/save_keyframe/loop

scoreboard players reset $_tick_save _anim