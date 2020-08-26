function anim_edit:search_part_editor
data remove storage anim:editor current_keyframe.extra.invisible
execute as @e[type=armor_stand,tag=anim_part_select] store result entity @s Invisible byte 1 run data get storage anim:editor current_keyframe.extra.invisible_prev
data remove storage anim:editor current_keyframe.extra.invisible_prev
function anim_edit:gui/editor/load