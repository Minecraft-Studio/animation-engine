function ainm_edit:search_part
data remove storage anim:editor current_keyframe.extra.marker
execute as @e[type=armor_stand,tag=anim_part_select] store result entity @s Marker byte 1 run data get storage anim:editor current_keyframe.extra.marker_prev
data remove storage anim:editor current_keyframe.extra.marker_prev
function anim_edit:gui/editor/load