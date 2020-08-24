execute store result score $_tmp_data _anim run data get storage anim:editor current_keyframe.rotate.head.y 1000
execute store result storage anim:editor current_keyframe.rotate.head.y float 0.001 run scoreboard players add $_tmp_data _anim 250
scoreboard players reset $_tmp_data _anim
scoreboard players set $_set_keyframe _anim 1
function anim_edit:gui/editor/load

