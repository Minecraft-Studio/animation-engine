function anim_edit:search_part_editor
data remove storage anim:editor current_keyframe.extra.small
execute as @e[type=armor_stand,tag=anim_part_select] store result entity @s Small byte 1 run data get storage anim:editor current_keyframe.extra.small_prev
data remove storage anim:editor current_keyframe.extra.small_prev
function anim_edit:gui/editor/load