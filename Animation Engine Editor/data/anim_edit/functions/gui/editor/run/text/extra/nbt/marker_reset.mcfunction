data remove storage anim:editor current_keyframe.extra.marker
execute as @e[type=armor_stand,tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_sel_row _anim store result entity @s Marker byte 1 run data get storage anim:editor current_keyframe.extra.marker_prev
data remove storage anim:editor current_keyframe.extra.marker_prev
function anim_edit:gui/editor/run/text/tab/rotate