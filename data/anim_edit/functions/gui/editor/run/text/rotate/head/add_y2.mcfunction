execute store result score $_tmp_data _anim run data get storage anim:editor current_keyframe.rotate.head.y 1024
execute store result storage anim:editor current_keyframe.rotate.head.y float 0.0009765625 run scoreboard players add $_tmp_data _anim 1024
scoreboard players reset $_tmp_data _anim
scoreboard players set $_set_keyframe _anim 1
function anim_edit:gui/editor/run/text/tab/rotate


