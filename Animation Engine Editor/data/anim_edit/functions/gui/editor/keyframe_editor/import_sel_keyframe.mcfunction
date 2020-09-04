execute store result storage anim:editor import_sel_keyframe.id int 1 run scoreboard players get @s _anim_id_player
execute store result storage anim:editor import_sel_keyframe.tick int 1 run scoreboard players get $_sel_col _anim
execute store result storage anim:editor import_sel_keyframe.part int 1 run scoreboard players get $_sel_row _anim
data modify storage anim:editor selected_keyframes append from storage anim:editor import_sel_keyframe
data remove storage anim:editor import_sel_keyframe