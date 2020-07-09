#save
# if exists, find it and modify it:
# (loop for search)
function anim_edit:gui/editor/run/search/save_keyframe/start
data modify storage anim:editor keyframes set from storage anim:editor result
data remove storage anim:editor result
#check if it's empty
execute store result score $_emp_head _anim run data get storage anim:editor current_keyframe.rotate.head
execute store result score $_emp_body _anim run data get storage anim:editor current_keyframe.rotate.body
execute store result score $_emp_r_arm _anim run data get storage anim:editor current_keyframe.rotate.r_arm
execute store result score $_emp_l_arm _anim run data get storage anim:editor current_keyframe.rotate.l_arm
execute store result score $_emp_r_leg _anim run data get storage anim:editor current_keyframe.rotate.r_leg
execute store result score $_emp_l_leg _anim run data get storage anim:editor current_keyframe.rotate.l_leg
execute store result score $_emp_pos _anim run data get storage anim:editor current_keyframe.position
#execute store result score $_emp_extra _anim run data get storage anim:editor current_keyframe.extra
# set value $_keyframe_empty _anim to 1 if the keyframe data is empty
execute if score $_emp_head _anim matches 0 if score $_emp_body _anim matches 0 if score $_emp_r_arm _anim matches 0 if score $_emp_l_arm _anim matches 0 if score $_emp_r_leg _anim matches 0 if score $_emp_l_leg _anim matches 0 if score $_emp_pos _anim matches 0 run scoreboard players set $_keyframe_empty _anim 1
# if empty, delete it
execute if score $_search_found _anim matches 1 if score $_keyframe_empty _anim matches 1 run function anim_edit:gui/editor/run/search/delete_keyframe/start

#if doesn't exists and it's not empty, create new (if it wasn't found):
execute if score $_search_found _anim matches 0 unless score $_keyframe_empty _anim matches 1 run function anim_edit:gui/editor/run/new/keyframe

#reset
scoreboard players reset $_search_found _anim
scoreboard players reset $_emp_head _anim
scoreboard players reset $_emp_body _anim
scoreboard players reset $_emp_r_arm _anim
scoreboard players reset $_emp_l_arm _anim
scoreboard players reset $_emp_r_leg _anim
scoreboard players reset $_emp_l_leg _anim
scoreboard players reset $_emp_pos _anim
#scoreboard players reset $_emp_extra _anim
scoreboard players reset $_keyframe_empty _anim
# doesn't reset if $_no_deselect _anim is set to 1
execute if score $_no_deselect _anim matches 1 run data remove storage anim:editor current_keyframe
scoreboard players reset $_no_deselect _anim

tag @s remove anim_editor_sel

#Reload all keyframes
scoreboard players operation $_old_sel_col _anim = $_sel_col _anim
scoreboard players reset $_sel_col _anim
function anim_edit:gui/editor/run/search/load_all_keyframes/start
scoreboard players operation $_sel_col _anim = $_old_sel_col _anim
scoreboard players reset $_old_sel_col _anim