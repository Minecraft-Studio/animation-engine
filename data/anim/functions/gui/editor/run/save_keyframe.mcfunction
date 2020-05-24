#save
# if exists, find it and modify it:
# (loop for search)
data modify storage anim:editor search set from storage anim:editor keyframes
function anim:gui/editor/run/search/save_keyframe/loop
data modify storage anim:editor keyframes set from storage anim:editor result
data remove storage anim:editor result

# if doesn't exists, create new:
execute unless score $_search_found _anim matches 1 run function anim:gui/editor/run/new/keyframe
scoreboard players reset $_search_found _anim

#reset
tag @s remove anim_editor_sel
function anim:gui/editor/reset