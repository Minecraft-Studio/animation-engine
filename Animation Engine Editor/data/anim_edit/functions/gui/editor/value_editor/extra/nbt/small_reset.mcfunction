data remove storage anim:editor current_keyframe.extra.small
execute as @e[type=armor_stand,tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_sel_row _anim store result entity @s Small byte 1 run data get storage anim:editor current_keyframe.extra.small_prev
data remove storage anim:editor current_keyframe.extra.small_prev
function anim_edit:gui/editor/run/text/tab/rotate