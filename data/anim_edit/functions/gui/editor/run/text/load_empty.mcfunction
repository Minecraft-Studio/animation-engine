data remove storage anim:editor current_keyframe.rotate
data remove storage anim:editor current_keyframe.position
data remove storage anim:editor current_keyframe.extra
data merge storage anim:editor {current_keyframe:{rotate:{},position:{},extra:{}}}
execute store result storage anim:editor current_keyframe.extra.rotate int 1 run scoreboard players get $sett_def_rotate _anim
execute store result storage anim:editor current_keyframe.extra.move int 1 run scoreboard players get $sett_def_move _anim
#load from frame

#menu
function anim_edit:gui/editor/run/text/tab/rotate