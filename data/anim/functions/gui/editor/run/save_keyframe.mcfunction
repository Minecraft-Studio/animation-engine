#save
# if exists, find it and modify it:
# (loop for search)
function anim:gui/editor/run/search/save_keyframe/start
data modify storage anim:editor keyframes set from storage anim:editor result
data remove storage anim:editor result
#check if it's empty
execute store result score $_emp_head _anim run data get storage anim:editor current_keyframe.rotate.head
execute store result score $_emp_body _anim run data get storage anim:editor current_keyframe.rotate.body
execute store result score $_emp_r_arm _anim run data get storage anim:editor current_keyframe.rotate.r_arm
execute store result score $_emp_l_arm _anim run data get storage anim:editor current_keyframe.rotate.l_arm
execute store result score $_emp_r_leg _anim run data get storage anim:editor current_keyframe.rotate.r_leg
execute store result score $_emp_l_leg _anim run data get storage anim:editor current_keyframe.rotate.l_leg
execute store result score $_emp_pos _anim run data get storage anim:editor current_keyframe.rotate.pos
execute store result score $_emp_extra _anim run data get storage anim:editor current_keyframe.rotate.extra
# set value $_keyframe_empty _anim to 1 if the keyframe data is empty
execute if score $_emp_head _anim matches 0 if score $_emp_body _anim matches 0 if score $_emp_r_arm _anim matches 0 if score $_emp_l_arm _anim matches 0 if score $_emp_r_leg _anim matches 0 if score $_emp_l_leg _anim matches 0 if score $_emp_pos _anim matches 0 if score $_emp_extra _anim matches 0 run scoreboard players set $_keyframe_empty _anim 1
# if empty, delete it
execute if score $_search_found _anim matches 1 if score $_keyframe_empty _anim matches 1 run function anim:gui/editor/run/search/delete_keyframe/start

#if doesn't exists and it's not empty, create new (if it wasn't found):
execute if score $_search_found _anim matches 0 unless score $_keyframe_empty _anim matches 1 run function anim:gui/editor/run/new/keyframe

#reset
scoreboard players reset $_search_found _anim
scoreboard players reset $_emp_head _anim
scoreboard players reset $_emp_body _anim
scoreboard players reset $_emp_r_arm _anim
scoreboard players reset $_emp_l_arm _anim
scoreboard players reset $_emp_r_leg _anim
scoreboard players reset $_emp_l_leg _anim
scoreboard players reset $_emp_pos _anim
scoreboard players reset $_emp_extra _anim
scoreboard players reset $_keyframe_empty _anim
# doesn't reset if $_no_deselect _anim is set to 1
execute if score $_no_deselect _anim matches 1 run data remove storage anim:editor current_keyframe
scoreboard players reset $_no_deselect _anim

tag @s remove anim_editor_sel

#import colors (reference: anim:gui/editor/run/search/load_all_keyframes/founded2)
scoreboard objectives add _anim_edit_color dummy
execute if data storage anim:editor current_keyframe.extra.x run scoreboard players set @s _anim_edit_color 14
execute if data storage anim:editor current_keyframe.extra.y run scoreboard players set @s _anim_edit_color 14
execute if data storage anim:editor current_keyframe.extra.z run scoreboard players set @s _anim_edit_color 14
execute if data storage anim:editor current_keyframe.rotate.head.x run scoreboard players set @s _anim_edit_color 1
execute if data storage anim:editor current_keyframe.rotate.head.y run scoreboard players set @s _anim_edit_color 1
execute if data storage anim:editor current_keyframe.rotate.head.z run scoreboard players set @s _anim_edit_color 1
execute if data storage anim:editor current_keyframe.rotate.body.x run scoreboard players set @s _anim_edit_color 2
execute if data storage anim:editor current_keyframe.rotate.body.y run scoreboard players set @s _anim_edit_color 2
execute if data storage anim:editor current_keyframe.rotate.body.z run scoreboard players set @s _anim_edit_color 2
execute if data storage anim:editor current_keyframe.rotate.r_arm.x run scoreboard players set @s _anim_edit_color 3
execute if data storage anim:editor current_keyframe.rotate.r_arm.y run scoreboard players set @s _anim_edit_color 3
execute if data storage anim:editor current_keyframe.rotate.r_arm.z run scoreboard players set @s _anim_edit_color 3
execute if data storage anim:editor current_keyframe.rotate.l_arm.x run scoreboard players set @s _anim_edit_color 4
execute if data storage anim:editor current_keyframe.rotate.l_arm.y run scoreboard players set @s _anim_edit_color 4
execute if data storage anim:editor current_keyframe.rotate.l_arm.z run scoreboard players set @s _anim_edit_color 4
execute if data storage anim:editor current_keyframe.rotate.r_leg.x run scoreboard players set @s _anim_edit_color 5
execute if data storage anim:editor current_keyframe.rotate.r_leg.y run scoreboard players set @s _anim_edit_color 5
execute if data storage anim:editor current_keyframe.rotate.r_leg.z run scoreboard players set @s _anim_edit_color 5
execute if data storage anim:editor current_keyframe.rotate.l_leg.x run scoreboard players set @s _anim_edit_color 6
execute if data storage anim:editor current_keyframe.rotate.l_leg.y run scoreboard players set @s _anim_edit_color 6
execute if data storage anim:editor current_keyframe.rotate.l_leg.z run scoreboard players set @s _anim_edit_color 6
execute if data storage anim:editor current_keyframe.position.x run scoreboard players set @s _anim_edit_color 7
execute if data storage anim:editor current_keyframe.position.y run scoreboard players set @s _anim_edit_color 7
execute if data storage anim:editor current_keyframe.position.z run scoreboard players set @s _anim_edit_color 7
execute if data storage anim:editor current_keyframe.rotate.head.x if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 8
execute if data storage anim:editor current_keyframe.rotate.head.y if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 8
execute if data storage anim:editor current_keyframe.rotate.head.z if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 8
execute if data storage anim:editor current_keyframe.rotate.body.x if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 9
execute if data storage anim:editor current_keyframe.rotate.body.y if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 9
execute if data storage anim:editor current_keyframe.rotate.body.z if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 9
execute if data storage anim:editor current_keyframe.rotate.r_arm.x if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 10
execute if data storage anim:editor current_keyframe.rotate.r_arm.y if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 10
execute if data storage anim:editor current_keyframe.rotate.r_arm.z if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 10
execute if data storage anim:editor current_keyframe.rotate.l_arm.x if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 11
execute if data storage anim:editor current_keyframe.rotate.l_arm.y if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 11
execute if data storage anim:editor current_keyframe.rotate.l_arm.z if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 11
execute if data storage anim:editor current_keyframe.rotate.r_leg.x if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 12
execute if data storage anim:editor current_keyframe.rotate.r_leg.y if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 12
execute if data storage anim:editor current_keyframe.rotate.r_leg.z if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 12
execute if data storage anim:editor current_keyframe.rotate.l_leg.x if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 13
execute if data storage anim:editor current_keyframe.rotate.l_leg.y if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 13
execute if data storage anim:editor current_keyframe.rotate.l_leg.z if data storage anim:editor current_keyframe.position run scoreboard players set @s _anim_edit_color 13
execute if score @s _anim_edit_color matches 1 run tag @s add anim_editor1
execute if score @s _anim_edit_color matches 2 run tag @s add anim_editor2
execute if score @s _anim_edit_color matches 3 run tag @s add anim_editor3
execute if score @s _anim_edit_color matches 4 run tag @s add anim_editor4
execute if score @s _anim_edit_color matches 5 run tag @s add anim_editor5
execute if score @s _anim_edit_color matches 6 run tag @s add anim_editor6
execute if score @s _anim_edit_color matches 7 run tag @s add anim_editor7
execute if score @s _anim_edit_color matches 8 run tag @s add anim_editor8
execute if score @s _anim_edit_color matches 9 run tag @s add anim_editor9
execute if score @s _anim_edit_color matches 10 run tag @s add anim_editor10
execute if score @s _anim_edit_color matches 11 run tag @s add anim_editor11
execute if score @s _anim_edit_color matches 12 run tag @s add anim_editor12
execute if score @s _anim_edit_color matches 13 run tag @s add anim_editor13
execute if score @s _anim_edit_color matches 14 run tag @s add anim_editor14
execute if score @s _anim_edit_color matches 1.. run tag @s remove anim_editor0
scoreboard objectives remove _anim_edit_color

execute as @e[type=armor_stand,tag=anim_editor] run function anim:gui/editor/reset