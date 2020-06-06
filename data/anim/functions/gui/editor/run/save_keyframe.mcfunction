#save
# if exists, find it and modify it:
# (loop for search)
function anim:gui/editor/run/search/save_keyframe/start
data modify storage anim:editor keyframes set from storage anim:editor result
data remove storage anim:editor result
#check if it's empty
execute if score $_search_found _anim matches 1 store result score $_tmp_empty_k _anim run data get storage anim:editor current_keyframe.rotate.head
execute if score $_tmp_empty_k _anim matches 0 run scoreboard players set $_tmp_empty_kc _anim 1
execute if score $_search_found _anim matches 1 store result score $_tmp_empty_k _anim run data get storage anim:editor current_keyframe.rotate.body
execute if score $_tmp_empty_k _anim matches 0 run scoreboard players set $_tmp_empty_kc _anim 1
execute if score $_search_found _anim matches 1 store result score $_tmp_empty_k _anim run data get storage anim:editor current_keyframe.rotate.r_arm
execute if score $_tmp_empty_k _anim matches 0 run scoreboard players set $_tmp_empty_kc _anim 1
execute if score $_search_found _anim matches 1 store result score $_tmp_empty_k _anim run data get storage anim:editor current_keyframe.rotate.l_arm
execute if score $_tmp_empty_k _anim matches 0 run scoreboard players set $_tmp_empty_kc _anim 1
execute if score $_search_found _anim matches 1 store result score $_tmp_empty_k _anim run data get storage anim:editor current_keyframe.rotate.r_leg
execute if score $_tmp_empty_k _anim matches 0 run scoreboard players set $_tmp_empty_kc _anim 1
execute if score $_search_found _anim matches 1 store result score $_tmp_empty_k _anim run data get storage anim:editor current_keyframe.rotate.l_leg
execute if score $_tmp_empty_k _anim matches 0 run scoreboard players set $_tmp_empty_kc _anim 1
execute if score $_search_found _anim matches 1 store result score $_tmp_empty_k _anim run data get storage anim:editor current_keyframe.rotate.pos
execute if score $_tmp_empty_k _anim matches 0 run scoreboard players set $_tmp_empty_kc _anim 1
execute if score $_search_found _anim matches 1 store result score $_tmp_empty_k _anim run data get storage anim:editor current_keyframe.rotate.extra
execute if score $_tmp_empty_k _anim matches 0 run scoreboard players set $_tmp_empty_kc _anim 1
execute if score $_tmp_empty_kc _anim matches 1 run function anim:gui/editor/run/search/delete_keyframe/start
scoreboard players reset $_tmp_empty_kc _anim
scoreboard players reset $_tmp_empty_k _anim

# if doesn't exists, create new:
execute unless score $_search_found _anim matches 1 run function anim:gui/editor/run/new/keyframe
scoreboard players reset $_search_found _anim

#reset
tag @s remove anim_editor_sel
function anim:gui/editor/reset