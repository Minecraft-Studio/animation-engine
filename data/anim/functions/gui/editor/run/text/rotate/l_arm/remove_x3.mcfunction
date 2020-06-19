execute store result score $_tmp_data _anim run data get storage anim:editor current_keyframe.rotate.l_arm.x 1024
execute store result storage anim:editor current_keyframe.rotate.l_arm.x float 0.0009765625 run scoreboard players remove $_tmp_data _anim 4096
scoreboard players reset $_tmp_data _anim
scoreboard players set $_set_keyframe _anim 1
function anim:gui/editor/run/text/tab/rotate

